#A stack is a list of values that grows and shrinks dynamically.
#In Ruby, a stack is easily implemented as an Array that just
#uses the #push and #pop methods. (add and remove last element)

#A stack-and-register programming language is a language that uses
#a stack of values. Each operation in the language operates on a 
#'register', which can be thought of as the current value. The register
#is not part of the stack. Operations that require two values pop
#the topmost item from the stack, perform the operation using the
#popped value and the register value, and then store the result back
#in the register.

#Consider a 'mult' operation in a stack-and-register language.
#It multiplies the stack value with the higher register value,
#removes the value from the stack, and then stores the result
#back in the register. Thus, if we start with a stack of 3 6 4
#where 4 is the topmost item in the stack, and a register value 
#of 7, then the mult operation will transform things to 3 6 on
#the stack and the result of the multiplication, 28, is left in
#the register. If we do another mult at this point, then the stack
#is transformed to 3, and the register is left with the value 168.

#Write a method that implements a miniature stack-and-register-based
#programming language that has the following commands.

#n - Place the value 'n' in the register. Do not modify the stack.
#push - push the register value on to the stack. Leave the value in the register.
#add - pops a value from the stack and adds it to the register value, storing the results in the register.
#SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
#MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
#DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
#MOD Pops a value from the stack and divides it into the register value, storing the integer 
#remainder of the division in the register.
#POP Remove the topmost item from the stack and place in register.
#PRINT Print the register value

def is_number?(string)
  string.to_i.to_s == string 
end

def minilang(string)
  stack = []
  register = 0
  string.split.each do |command|
    case command
    when 'PUSH' then stack.push(register)
    when 'ADD' then register += stack.pop
    when 'SUB' then register -= stack.pop
    when 'MULT' then register *= stack.pop
    when 'DIV' then register /= stack.pop
    when 'MOD' then register %= stack.pop
    when 'POP' then register = stack.pop
    when 'PRINT' then p register
    else register = command.to_i
    end
  end
end

minilang('3 PUSH 5 MOD PUSH 7 PUSH 5 PUSH 4 MULT PUSH 3 ADD SUB DIV PRINT')  

#3 + (4 * 5) - 7 / (5 % 3)
