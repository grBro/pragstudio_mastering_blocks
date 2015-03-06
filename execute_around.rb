def tag(value)
	print "<#{value}>"
	print yield
	print "</#{value}>"
end

tag(:h1) { "Breaking News!" }
tag(:h2) { "Massive Ruby Discovered" }

tag(:ul) do
  tag(:li) { "It sparkles!"}
  tag(:li) { "It shines!"}
  tag(:li) { "It mesmerizes!"}
end