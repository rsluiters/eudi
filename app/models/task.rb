class Task < ActiveRecord::Base
  attr_accessible :answer, :category_id, :description, :name, :points,:option1, :option2, :option3, :option4, :option5, :solution
  
  belongs_to :category
  def answered 
    return "-1"
  end
  
  def optionshash
    arr ={}
    arr["1"] = self.option1 unless self.option1 == ""
    arr["2"] = self.option2 unless self.option2 == ""
    arr["3"] = self.option3 unless self.option3 == ""
    arr["4"] = self.option4 unless self.option4 == ""
    arr["5"] = self.option5 unless self.option5 == ""
    return arr
  end
  
  def correct_answer
    case self.answer
      when "1" 
        return self.option1
      when "2" 
        return self.option2
      when "3" 
        return self.option3
      when "4" 
        return self.option4
      when "5" 
        return self.option5
    end 
  end
#  category_name
end
