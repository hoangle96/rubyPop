require_relative 'ParseToken'
require_relative 'converttopostfix'
require_relative 'eval'

include ParseToken
include ConvertToPostfix
# include evalE


# user input
puts "Please type in an infix expression"
inFixStr = gets.strip
#
# postFix = Array.new
 inFix = Array.new
#
inFix =  ParseToken(inFixStr)
for i in 0...inFixStr.length do
  print (inFix[i])
end

# postFix = ConvertToPostFix(inFix)

# print(evalE(["53", "27", "2", "+", "*"]))

# postFix.each{ |s|
#   print(s + "\n")
# }
#