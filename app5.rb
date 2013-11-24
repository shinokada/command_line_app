require 'erb'
template = ERB.new %q{Chunky <%= food %>!}
food = "bacon"
puts template.result(binding) # => "Chunky bacon!"
food = "peanut butter"
puts template.result(binding) # => "Chunky peanut butter!"