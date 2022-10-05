# Name Mangler

@name = "Johanna Jackson"

# Mangle the name by reversing it or borgifying it
def modified_name(name, add_borg)
  # Split the name into first and last in an array
  split_name = name.split()
  # Reverse the array of name components so the array is [last, first]
  reversed_name_components = split_name.reverse

  if add_borg
    # Add borg to the end of the array
    reversed_name_components << "Borg"
  end

  # Return rejoined array of name components
  return reversed_name_components.join(' ')
end

# return "First Last" as "Last First"
def reverse_name(name)
  # Split the name into first and last in an array
  split_name = name.split()
  # Reverse the array of name components so the array is [last, first]
  reversed_name_components = split_name.reverse
  # Return rejoined array of name components
  return reversed_name_components.join(' ')
end

# return "Some Name" as "Name Some Borg"
def borgify_name(name)
  return reverse_name(name) + ' Borg'
end

puts "New name:      #{modified_name(@name, false)}"
puts "New borg name: #{modified_name(@name, true)}"

puts "New name:      #{reverse_name(@name)}"
puts "New borg name: #{borgify_name(@name)}"


# testing pass by value vs pass by reference
# def foo(s)
# 	s << "foo"
# end

# def bar(s)
# 	s = "bar"
# end

# t = 'hi'
# foo(t)
# puts(t)

# u = 'hi'
# foo(u.dup)
# puts(u)

# r = 'hello'
# bar(r)
# puts(r)
