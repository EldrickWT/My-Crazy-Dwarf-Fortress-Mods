class DFJOBSGenerator
  def initialize
    read_items
  end

  def print_reactions
    reactionfiles = Dir.glob("reaction_*")

    reactionfiles.each do |reactionfile|
      reactions = File.read(reactionfile).scan /REACTION:([^\]]+)[^(?:NAME)]*NAME:([^\]]+).*?BUILDING:(\w+).*?PRODUCT:[^:]*:[^:]*:([^:]*):([^:]+):([^:]+):([^:\]]+)/m

      reactions.each do |reaction|
        STDOUT.puts  <<EOF
    <dfjob name="#{reaction[1]}" category="#{reaction[2].downcase}" reaction="#{reaction[0]}">
        #{item_string(reaction)}
    </dfjob>
EOF
      end
    end

  end

  def item_string(reaction)
    if reaction[4] != "NO_SUBTYPE" && reaction[4] != "NONE"
      type = reaction[4]
    else
      type = reaction[3]
    end
    typestr= @items[type]
    typestr = type.downcase if typestr.nil?
    itemstr = "<item type=\"#{typestr}\" "

    if reaction[5] == "GET_MATERIAL_FROM_REAGENT"
      itemstr += "material=\"all\"/>"
    elsif reaction[5] == "METAL" || reaction[5] == "INORGANIC"
      itemstr += "material=\"#{reaction[6]}\"/>"
    else
      itemstr += "material=\"#{reaction[5]}\"/>"
    end

    return itemstr
  end

  def read_items
    itemfiles = Dir.glob("item*")
    @items = {}

    itemfiles.each do |itemfile|
      STDOUT.puts "Scanning file: #{itemfile}"
      items = File.read(itemfile).scan(/\[ITEM[^:]*:(?:([^\]]+))[^(?:NAME)]+?[^:]+:[^:]+:([^\]]+)/m)
      items.each do |item|
        @items[item[0]] = item[1]
      end
    end
  end
end

DFJOBSGenerator.new.print_reactions