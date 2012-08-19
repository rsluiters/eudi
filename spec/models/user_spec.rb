require 'spec_helper'

describe User do

  describe "roles" do

    before(:each) do
      @u = User.new()
      @u.email="test@test.de"
      @u.first_name="test"
      @u.last_name="test"
      @u.password="test"
      @u.role = User::ROLE_USER
      @u.save!
      @ut = User.new()
      @ut.email="test_teacher@test.de"
      @ut.first_name="test"
      @ut.last_name="test"
      @ut.password="test"
      @ut.role = User::ROLE_TEACHER
      @ut.save!
      @ua = User.new()
      @ua.email="test_admin@test.de"
      @ua.first_name="test"
      @ua.last_name="test"
      @ua.password="test"
      @ua.role = User::ROLE_ADMIN
      @ua.save!
      
    end
    
    it "should check the admin role properly" do
      @u.is_admin.should be_false
      @ut.is_admin.should be_false
      @ua.is_admin.should be_true
    end#it
    it "should check the teacher role properly" do
      @u.is_teacher.should be_false
      @ut.is_teacher.should be_true
      @ua.is_teacher.should be_true
    end#it
  end#context role
end#describe user
