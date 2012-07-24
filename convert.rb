require 'plist'

bbcolors = Plist::parse_xml("2AV3.bbcolors")

# testing

bbcolors.each do |name, value|

  css = "color: "

  if value == true || value == false || value == 1 || value == 0
    next
  end

  if name == "BackgroundColor" || name == "PrimaryHighlightColor"
    css = "background-color: "
  end


  value.gsub!( /(\d+\.*\d*){3}/ ) do |n|
    (n.to_f * 255).to_i
  end

  # (\d+\.*\d*),(\d+\.*\d*),(\d+\.*\d*)

  puts ".#{name} { #{css} #{value};}"
end

def split(rgba)

end

def f_to_i(f)
  f * 255
end

def i_to_f(i)
  i / 255
end