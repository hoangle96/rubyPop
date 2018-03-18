module ParseToken
  def ParseToken(s = "")
    regex = /^[0-9]$/  # regular expression that matches any numeric expression
    temp = ""

    # since Ruby provides built-in push and pop functions for arrays, we use arrays as stacks.
    # As such, we will use the terms stack and array interchangeably in this project
    arrT = Array.new # arrT is the array (stack) for all tokens

    s = s.delete(" ")# delete any white-space in the user's input

    # iterate through each character in the input string,
    # if the character is numeric, it will be added to the empty string, called temp.
    # if the character is not numeric, the string, temp, will be pushed into the stack then reset to an empty string,
    # then the character is pushed to the stack.
    s.each_char {|c|
      if c.match(regex)
        temp += c
      else
        arrT.push(temp)
        temp = ""
        arrT.push(c)
      end
    }

    # If the "temp" string is not empty, push it to the stack.
    # This prevents the last number of the expression from not being pushed to the stack
    if !temp.empty?
      arrT.push(temp)
    end

    #delete all empty elements in the stack
    arrT.delete_if{|x|
      x == ""
    }

    # No return statement is needed here.
    # Since Ruby automatically returns the last mentioned element, arrT will be return.
  end
end