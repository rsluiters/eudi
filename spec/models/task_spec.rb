require 'spec_helper'

describe Task do

  context :correctAnswer do
    it "should return the correct option for the answer" do
      (1..5).each{|i|
          t = FactoryGirl.build(:task, :answer=>i)
          opts=[t.option1,t.option2,t.option3,t.option4,t.option5]
          t.correct_answer.should eq(opts[i])
        }
    end#it
  end#context
end
