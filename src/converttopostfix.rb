# class ConvertToPostFix
#   postfix = Array.new

  def ConvertToPostFix(infix)
    arrPf = Array.new
    infix << ")"

    arrPf.push("(")
    for i in 0...infix.length do
      case
        when !Integer(infix[i]).nan?
        when isOp(infix[i])
          arrPf.each { |a|
            if isOp(a)
              if precedence(infix[i], a)
                arrPf.push(a)
              end
            end
          }
          arrPf.push(infix[i])
        when infix[i] == "("
          arrPf.push(infix[i])
      end # end case
    end # end of for loop through infix
  end # end of def ConvertToPostFix

  def isOp(s)
    ops = ["+","-","/","*","^","%"]
    if ops.include?(s)
      return true
    else
      return false
    end # end of if
  end # end def isOp

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
  end # end precedence def


  def isInt(s)
    regex = /^[0-9]$/
    if s.match(regex)
      return true
    else
      return false
    end
  end

# end #end of class


print precedence("^", "*")
