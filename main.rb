# Name Mangler

@name = "Johanna Jackson"

# "Mangle" the name by reversing or borgifying it.
def modified_name(name, borgify)
  return borgify_name(name) if borgify
  return reverse_name(name)
end

# Reverse the order of a given name.
# Ex: "First Last" outputs "Last First"
def reverse_name(name)
  # Split the name into an array containing its parts
  split_name = name.split()
  # Reverse order of name components so the array is [last, first]
  reversed_name_components = split_name.reverse
  # Return string of name components separated by spaces
  return reversed_name_components.join(' ')
end

# Reverses & appends "Borg" to a name.
# Ex: "Some Name" outputs "Name Some Borg"
def borgify_name(name)
  return reverse_name(name) + ' Borg'
end

# demonstrate the original function still works
puts "New name:      #{modified_name(@name, false)}"
puts "New borg name: #{modified_name(@name, true)}"

# demonstrate cleaner code functions (refactored original)
puts "New name:      #{reverse_name(@name)}"
puts "New borg name: #{borgify_name(@name)}"
