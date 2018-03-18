module ConvertToPostfix
  def isOp(s)
    ops = ["+", "-", "/", "*", "^", "%"]
    return ops.include?(s) ? true : false
  end

  # assign order of precedence to each operator then compare the orders of the two operators
  def precedence(op1, op2)
    order = {
        "^" => 3,
        "*" => 2,
        "/" => 2,
        "%" => 2,
        "+" => 1,
        "-" => 1
    }
    return order[op1] < order[op2] ? true : false
  end


  def ConvertToPostFix(arr = []) # the default parameter is an empty array
    regex = /[0-9]/  # regex matches number

    # stack for operators, arr for infix expression
    stack = ["("]
    arr.push(")")

    # postfix is the array for the converted postfix expression
    postfix = Array.new

    # Loop through the infix expression.
    # If an element is numeric or a left parenthesis, it will be push to the postfix stack
    # If an element is an operator, all the operators in the stack that have higher precedence will be pushed into the postfix expression,
    # then the element will be pushed to the postfix expression.
    # If an element is a right parenthesis, all the operators in the stack will be pushed into the postfix expression
    # until a left parenthesis appears.
    arr.each {|s|
      if s.match(regex)
        postfix.push(s)
      elsif s == "("
        stack.push(s)
      elsif isOp(s)
        stack.reverse_each {|opsInStack|
          if isOp(opsInStack) and !precedence(opsInStack, s)
            postfix.push(stack.pop)
          elsif !isOp(opsInStack)
            break
          end
        }
        stack.push(s)
      elsif s == ")"
        stack.reverse_each {|elementInStack|
          if isOp(elementInStack) and stack.last != "("
            postfix.push(stack.pop)
          end
        }
        stack.pop
      end
    }

    # If the stack still have something, push it to the postfix
    if (!stack.empty?)
      postfix.push(stack.pop)
    end

    return postfix

  end
end