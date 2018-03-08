# class ConvertToPostFix
#   postfix = Array.new

  def ConvertToPostFix(infix)
    arrPf = Array.new
    infix << ")"

    arrPf.push("(")
    while !infix.empty? do

    end



    # for i in 0...infix.length do
    #   case
    #     when !Integer(infix[i]).nan?
    #       arrPf.push(infix[i])
    #     when isOp(infix[i])
    #       arrPf.each { |a|
    #         if isOp(a)
    #           if precedence(infix[i], a)
    #             arrPf.push(a)
    #           end
    #         end
    #       } # for each loop for the case that infix[i] is an element
    #       arrPf.push(infix[i])
    #     when infix[i] == "("
    #       while
    #       arrPf.push(infix[i])
    #   end # end case
    # end # end of for loop through infix
  end # end of def ConvertToPostFix

    def isOp(s)
      ops = ["+","-","/","*","^","%"]
      return ops.include?(s) ? true: false
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
  end # end precedence def


  def isInt(s)
    regex = /^[0-9]$/
    if s.match(regex)
      return true
    else
      return false
    end
  end

  def op

  end

# end #end of class


print precedence("^", "*")
