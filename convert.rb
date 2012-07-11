require 'plist'

bbcolors = Plist::parse_xml("2AV3.bbcolors")

bbcolors.each do |name, value|

  css = "color: "

  if value == true || value == false || value == 1 || value == 0
    next
  end

  if name == "BackgroundColor" || name == "PrimaryHighlightColor"
    css = "background-color: "
  end

  puts ".#{name} { #{css} #{value};}"
end