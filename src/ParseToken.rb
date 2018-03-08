class ParseToken
  def parseToken(s="")
    regex = /^[0-9]$/
    temp = ""
    arrT = Array.new

    s = s.delete(" ")
    s.each_char{|c|
      if c.match(regex) #return the initial index of the string that match w regex -> return 0 because s[i] has 1 char.
        temp += c
        # print(s[i] + "\n")
      else
        arrT.push(temp)
        temp = ""
        arrT.push(c)
      end
    }


    if !temp.empty?
      arrT.push(temp)
    end

    arrT = arrT.delete("")
    return arrT
  end
end



#
# # array = Array.new
# temp =""
# regex = /[a-zA-Z0-9]+/

#   for i in 0...str.length do
#     if(str[i] == regex) #regex for alphanumberic
#       temp = temp + str[i]
#     # else
#     #   array.push(temp)
#     #   temp = ""
#     end
#   end
#   return array
#
# testStr = "a+b"

# a = (parseToken(testStr))

# #regex
# numeric = /[0-9]/
# whitespace = /\s/
# a = "a % b"
# temp = ""
# temp += "a"

# for i in 0...a.length do
#   if a[i] =~ numeric
#     print a[i]
#   end
# end
#
# for i in 0...array.length do
#   print(array[i] + "\n")
# end
#
# arr = Array.new
# ops = ["+","-","/","*","^","%","(",")"]
# str = "(53 + 21 / 7)"
# str = str.delete(' ')
# print(str)

# arrSplit = str.split(" ")
# for i in 0...arrSplit.length do
#   arr.push(arrSplit[i])
#   print(arr[i] + "\n")
# end
#

# regex = /^[0-9]$/
# temp = ""
# s =  "(67-(79^7)) + 7"
# arrT = Array.new
#
# s = s.delete(" ")
# for i in 0...s.length do
#   if s[i].match(regex) #return the initial index of the string that match w regex -> return 0 because s[i] has 1 char.
#     temp += s[i]
#     # print(s[i] + "\n")
#   else
#     arrT.push(temp)
#     temp = ""
#     arrT.push(s[i])
#   end
# end
#
# if !temp.empty?
#   arrT.push(temp)
# end
#
# arrT.delete("")
#
# for i in 0...arrT.length do
#   print(arrT[i] + "\n")
# end
# end
