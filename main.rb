# Name Mangler

@name = "Johanna Jackson"

# Mangle the name by reversing it or borgifying it
def modified_name(name, add_borg)
  return borgify_name(name) if add_borg
  return reverse_name(name)
end

# return "First Last" as "Last First"
def reverse_name(name)
  # Split the name into an array containing first and last
  split_name = name.split()
  # Reverse array of name components so the array is [last, first]
  reversed_name_components = split_name.reverse
  # Return rejoined array of name components
  return reversed_name_components.join(' ')
end

# return "Some Name" as "Name Some Borg"
def borgify_name(name)
  return reverse_name(name) + ' Borg'
end

# demonstrate the original function
puts "New name:      #{modified_name(@name, false)}"
puts "New borg name: #{modified_name(@name, true)}"
# demonstrate clean code functions (refactored original)
puts "New name:      #{reverse_name(@name)}"
puts "New borg name: #{borgify_name(@name)}"
