require 'spec_helper'

describe Task do

  context :correctAnswer do
    it "should return the correct option for the answer" do
      (1..5).each{|i|
          t = FactoryGirl.build(:task, option1: 11, option2: 12, option3: 13, option4: 14, option5: 15, answer: i)
          t.correct_answer.should eq(10+i)
        }
    end#it
  end#context
end
