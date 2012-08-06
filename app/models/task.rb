class Task < ActiveRecord::Base
  attr_accessible :answer, :category_id, :description, :name, :points,:option1, :option2, :option3, :option4, :option5, :solution
  
  belongs_to :category
  def answered 
    return "-1"
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
