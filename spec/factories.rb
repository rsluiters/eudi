require 'factory_girl'

begin
  FactoryGirl.define do

    factory :category do
      name "MyString"
      description "MyText"
    end
  
    factory :user do
      first_name "MyString"
      last_name "MyString"
      email "MyString"
      password_digest "MyString"
      points 1
    end

    factory :task, class: 'Task' do |t|
      t.name "Name der Task"
      t.description "Beschreibung"
      option1 'Hallo1'
      t.option2 "Hallo2"
#      t.option3 "Hallo3"
#      t.option4 "Hallo4"
#      t.option5 "Hallo5"
      t.answer 3
      t.points 1
 #     t.solution "Beschreibung der Lösung"
      t.association :category
    end
  
  
  end
rescue FactoryGirl::DuplicateDefinitionError => d
  #Skip this error, if already defined then fine
end