require 'erb'
x = 42

template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)
puts ""

animals = ["cat", "dog", "fish", "bird"]
animals.each do |animal|
  phrase = "i love my #{animal}"
  template = ERB.new "<%= phrase %>"
  puts template.result(binding)
end
puts ""

template = ERB.new "Animals.count is <%= animals.count %>"
puts template.result(binding)
puts""

##animals.map do |animal|
##  animal.upcase
##end

animals.each do |a|
  template = ERB.new "i love my <%= a.upcase %> "
  puts template.result(binding)
end
