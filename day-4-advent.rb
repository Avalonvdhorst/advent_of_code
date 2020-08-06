input = (145852..616942)

# rules:
# It is a six-digit number.
# The value is within the range given in your puzzle input.
# Two adjacent digits are the same (like 22 in 122345).
# Going from left to right, the digits never decrease; they only ever increase or stay the same (like 111123 or 135679).

def adjacent?(attempt)
  res = false
  attempt.push(100)
  previous = attempt[0]
  nums_in_a_row = 1
  attempt[1..-1].each do |num|
    if previous != num
      if nums_in_a_row == 2
        res = true
        break
      elsif nums_in_a_row != 1
        res = false
      end
      previous = num
      nums_in_a_row = 1
    else
      nums_in_a_row += 1
    end
  end
  res
end

def increment?(attempt)
  attempt.sort == attempt
end

def turn_string_to_int_arr(str)
  digits = []
  str.to_s.split('').each do |digit|
    digits << digit.to_i
  end
  digits
end

valids = []
input.each do |string_attempt|
  attempt = turn_string_to_int_arr(string_attempt)
  if adjacent?(attempt) && increment?(attempt)
    valids << attempt
  end
end

p valids.count
