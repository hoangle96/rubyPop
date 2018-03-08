require_relative '../src/ParseToken.rb'


puts "Please type in an infix expression"
inFixStr = gets.strip

tokenObj = ParseToken.new
postFix = tokenObj.parseToken(inFixStr)

postFix.each


