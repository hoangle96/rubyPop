require_relative 'ParseToken'
require_relative 'ConvertToPostfix'
require_relative 'eval'

include ParseToken
include ConvertToPostfix
include Eval

# user input
puts "Please type in an infix expression"
inFixStr = gets.strip

# Convert infix string to tokens
inFix = ParseToken(inFixStr)

# convert infix expression to postfix expression
postFix = ConvertToPostFix(inFix)
print("Equivalent postfix expression: ")
postFix.each{|s|
  print(s)
}

print("\n")

# evaluate the result
result = evalE(postFix)
print result