#module

#https://stackoverflow.com/questions/19733737/how-do-i-convert-a-math-operator-character-to-perform-its-operation
def calc(x,op,y)
  if op == "^"
    op = "**"
  end
  return(x.to_i.send(op,y.to_i))
end
#def evalE(pf)
  pft = ["2","2","%","5","3","2","^","*","+"]
  pfEnd = pft.length
  regex = /[0-9]/
  arrT = Array.new


  for i in 0...pft.length do
    if pft[i].match(regex)
      arrT.push(pft[i]) # this is where we load up the stack
    else
      var1 = arrT.pop() # we want the bottom element of the stack
      var2 = arrT.pop()
      arrT.push(calc(var2,pft[i],var1))
    end
  end

print arrT.pop()
#end

#end