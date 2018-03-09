module ConvertToPostfix
  def isOp(s)
    ops = ["+", "-", "/", "*", "^", "%"]
    return ops.include?(s) ? true : false
  end

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

  def ConvertToPostFix(arr = [])
    # regex to get the number
    regex = /[0-9]/

    # stack for operators, arr is the infix expression
    stack = ["("]
    arr.push(")")

    #postfix is the converted postfix expression
    postfix = Array.new

    # Loop through the infix expression
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