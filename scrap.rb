def calculate(number_1, number_2, number_3, &math_operation)
    math_operation.call(number_1,number_2,number_3)
end

def calculate(number_1, number_2, number_3)
    yield(number_1,number_2,number_3)
end

def calculate(*args)
    yield(args)
end


puts calculate(3,2,3) {|num1, num2, num3| num1*num2*num3}

puts calculate(3,2,3) {|num1, num2, num3| num1+num2+num3}

puts calculate(3,2,3,4,2) {|num1, num2, num3, num4, num5| num1+num2+num3+num4+num5}

puts calculate(3,2,3,4,2) {|args| args.reduce(&:+)}

puts calculate(3,2,3,4,2) {|args| args.reduce(&:*)}