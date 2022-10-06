# Name Mangler

# Reverse the order of parts of a given name.
# Ex: "First Last" outputs "Last First"
def reverse_name(name)
  # Split name into an array containing its parts
  split_name = name.split()
  # Reverse order of name parts so array is [last, first]
  reversed_name_components = split_name.reverse
  # Join name parts into a string separated by spaces
  return reversed_name_components.join(' ')
end

# Reverses & appends "Borg" to a given name.
# Ex: "Some Name" outputs "Name Some Borg"
def borgify_name(name)
  return reverse_name(name) + ' Borg'
end

# "Mangle" the name by reversing or borgifying it.
def modified_name(name, borgify)
  return borgify_name(name) if borgify
  return reverse_name(name)
end

@name = "Johanna Jackson"

# Demo the original function still works!
puts "New name:      #{modified_name(@name, false)}"
puts "New borg name: #{modified_name(@name, true)}"
# Demo single responsibility functions
puts "New name:      #{reverse_name(@name)}"
puts "New borg name: #{borgify_name(@name)}"
