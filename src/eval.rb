 module Eval
  # https://stackoverflow.com/questions/19733737/how-do-i-convert-a-math-operator-character-to-perform-its-operation
  def calc(x, op, y)
    if op == "^"
      op = "**"
    end
    return(x.to_i.send(op, y.to_i))
  end

  # evalE takes the postfix stack (array), iterates through each element of the stack.
  # If the element is a number, push it in the postfix stack.
  # If the element is an operator, pop the 2 preceding numbers and do the calculation,
  # then push the result to the stack.
  def evalE(pft)
    pfEnd = pft.length
    regex = /[0-9]/
    arrT = Array.new

    # Iterate through each element of
    for i in 0...pft.length do
      if pft[i].match(regex)
        arrT.push(pft[i]) # this is where we load up the stack
      else
        var1 = arrT.pop() # we want the bottom element of the stack
        var2 = arrT.pop()
        arrT.push(calc(var2,pft[i],var1))
      end
    end
    return arrT.pop()
  end
 end