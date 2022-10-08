# Name Mangler

# Reverse a given name.
# Ex: "First Last" returns "Last First"
def reverse_name(name)
  # array of name parts, ex: [first, last]
  split_name = name.split()
  # reverse name parts, ex: [last, first]
  reversed_name_components = split_name.reverse
  # Join name parts into string separated by space(s), ex: "last first"
  return reversed_name_components.join(' ')
end

# Reverse & append "Borg" to a given name.
# Ex: "Some Name" returns "Name Some Borg"
def borgify_name(name)
  return reverse_name(name) + ' Borg'
end

# "Mangle" a given name by manipulating it.
def modified_name(name, borgify)
  return borgify_name(name) if borgify
  return reverse_name(name)
end

@name = "Johanna Jackson"

# Demo original function still works:
puts "New name:      #{modified_name(@name, false)}"
puts "New borg name: #{modified_name(@name, true)}"
# Demo clean, single responsibility functions:
puts "New name:      #{reverse_name(@name)}"
puts "New borg name: #{borgify_name(@name)}"
