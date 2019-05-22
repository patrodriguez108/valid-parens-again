def is_valid(s)
  array = []

  i = 0

  until i == s.length
    if s[i] == "("
      array << s[i]
    elsif s[i] == ")"
      array << s[i]
    end

    i += 1
  end

  array.include?("(") && array.include?(")")
end

is_valid("()")

# output: true

# is_valid("()[]{}")

# # output: true

# is_valid("(]")

# # output: false

# is_valid("([)]")

# # output: false

# is_valid("{[]}")

# # output: true


# scan through string for an opening bracket
# place opening bracket in array
# if array contains both opening and closing bracket, return true