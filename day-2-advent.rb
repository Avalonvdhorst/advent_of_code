initial_intcode = [1,12,2,3,1,1,2,3,1,3,4,3,1,5,0,3,2,1,13,19,1,9,19,23,1,6,23,27,2,27,9,31,2,6,31,35,1,5,35,39,1,10,39,43,1,43,13,47,1,47,9,51,1,51,9,55,1,55,9,59,2,9,59,63,2,9,63,67,1,5,67,71,2,13,71,75,1,6,75,79,1,10,79,83,2,6,83,87,1,87,5,91,1,91,9,95,1,95,10,99,2,9,99,103,1,5,103,107,1,5,107,111,2,111,10,115,1,6,115,119,2,10,119,123,1,6,123,127,1,127,5,131,2,9,131,135,1,5,135,139,1,139,10,143,1,143,2,147,1,147,5,0,99,2,0,14,0]

1000.times do
  initial_intcode.push(10)
end

def solve_intcode(intcode)
  for i in (0..intcode.count - 1).step(4) do
    opcode = intcode[i]

    first_pos = intcode[i + 1]
    second_pos = intcode[i + 2]
    third_pos = intcode[i + 3]
    if opcode == 1
      intcode[third_pos] = (intcode[first_pos] + intcode[second_pos])
    elsif opcode == 2
      intcode[third_pos] = intcode[first_pos] * intcode[second_pos]
    elsif opcode == 99
      break
    end
  end
  intcode[0]
end

(0..99).each do |k|
  (0..99).each do |j|

    intcode = initial_intcode.dup
    intcode[1] = k
    intcode[2] = j100
    result = solve_intcode(intcode)
    if result == 19690720
      p "noun :"
      p k
      p "verb :"
      p j
      break
    end
  end
end
