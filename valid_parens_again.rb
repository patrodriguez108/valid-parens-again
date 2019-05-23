def is_valid(s)
  array = []

  i = 0

  until i == s.length
    if s[i] == "(" || s[i] == "[" || s[i] == "{"
      array << s[i]
    elsif s[i] == ")" || s[i] == "]" || s[i] == "}"
      array << s[i]
    end

    i += 1
  end

  if array.include?("(") && array.include?(")")
    array.delete("(") && array.delete(")")
  end
  
  if array.include?("[") && array.include?("]")
    array.delete("[") && array.delete("]")
  end

  if array.include?("{") && array.include?("}")
    array.delete("{") && array.delete("}")
  end

  array.empty?
end

is_valid("()")

# output: true

is_valid("()[]{}")

# output: true

is_valid("(]")

# output: false

is_valid("([)]")

# output: false

is_valid("{[]}")

# output: true


# scan through string for an opening bracket
# place opening bracket in array
# scan through string for a closing bracket
# place closing bracket in array
# if array contains both opening and closing bracket, remove both from array