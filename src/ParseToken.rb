module ParseToken
  def ParseToken(s = "")
    regex = /^[0-9]$/
    temp = ""
    arrT = Array.new


    s = s.delete(" ")
    s.each_char {|c|
      if c.match(regex) #return the initial index of the string that match w regex -> return 0 because s[i] has 1 char.
        temp += c
      else
        arrT.push(temp)
        temp = ""
        arrT.push(c)
      end
    }
    if !temp.empty?
      arrT.push(temp)
    end

    arrT.delete_if{|x|
      x == ""
    }
  end
end