=begin

Stack is like a dynamic array that #pushes and #pops
Register is the current value. Not part of stack

MULT opertaion multiplies the stack value with the register value
removes the value from the stack and stores the result back in the register

create main method from where we will access other methods

=end

# def push(reg, stk)
#   stk << reg
#   return reg, stk 
# end

# def add(reg, stk)
#   reg += stk.pop
#   return reg, stk
# end

# def sub(reg, stk)
#   reg = reg - stk.pop 
#   return reg, stk
# end

# def mult(reg, stk)
#   reg *= stk.pop
#   return reg, stk
# end

# def div(reg, stk)
#   reg /= stk.pop
#   return reg, stk
# end

# def mod(reg, stk)
#   reg = reg.divmod(stk.pop)[1]
#   return reg, stk
# end

# def pop(reg, stk)
#   reg = stk.pop 
#   return reg, stk
# end

# def minilang(str)
#   register = 0
#   stack = []
#   str.split.each do |action|
#     if action.to_i != 0
#       register = action.to_i 
#     elsif action == 'PRINT'
#       puts register 
#     elsif action == 'PUSH'
#       register, stack = push(register, stack)
#     elsif action == 'ADD'
#       register, stack = add(register, stack)
#     elsif action == 'SUB'
#       register, stack = sub(register, stack)
#     elsif action == 'MULT'
#       register, stack = mult(register, stack)
#     elsif action == 'DIV'
#       register, stack = div(register, stack)
#     elsif action == 'MOD'
#       register, stack = mod(register, stack)
#     else 
#       register, stack = pop(register, stack)
#     end
#   end
#   return register
# end

def minilang(program)
  stack = []
  register = 0
  program.split.each do |token|
    case token 
    when 'ADD'   then register += stack.pop
    when 'DIV'   then register /= stack.pop 
    when 'MULT'  then register *= stack.pop 
    when 'MOD'   then register %= stack.pop 
    when 'SUB'   then register -= stack.pop 
    when 'PUSH'  then stack.push(register)
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register 
    else              register = token.to_i 
    end 
  end
end

minilang('PRINT')
# 0

minilang('5 PUSH 3 MULT PRINT')
# 15

minilang('5 PRINT PUSH 3 PRINT ADD PRINT')
# 5
# 3
# 8

minilang('5 PUSH POP PRINT')
# 5

minilang('3 PUSH 4 PUSH 5 PUSH PRINT ADD PRINT POP PRINT ADD PRINT')
# 5
# 10
# 4
# 7

minilang('3 PUSH PUSH 7 DIV MULT PRINT ')
# 6

minilang('4 PUSH PUSH 7 MOD MULT PRINT ')
# 12

minilang('-3 PUSH 5 SUB PRINT')
# 8

minilang('6 PUSH')
# (nothing printed; no PRINT commands)