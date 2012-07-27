class Task < ActiveRecord::Base
  attr_accessible :answer, :category_id, :description, :name, :points
  
  belongs_to :category
end
