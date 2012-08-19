# Encoding: utf-8
class User < ActiveRecord::Base
  ROLE_USER=0
  ROLE_ADMIN=1
  ROLE_TEACHER=2
  
  attr_accessible :email, :first_name, :last_name, :points, :password
  
  validates_presence_of :first_name, :last_name, :email
  validates_uniqueness_of :email
  validates :role, :inclusion    => { :in => [ROLE_USER, ROLE_ADMIN,ROLE_TEACHER]}

  after_initialize :default_values
  
  has_secure_password
  
  def name
    "#{self.first_name} #{self.last_name}"
  end

  def is_admin
    return self.role == ROLE_ADMIN
  end

  def is_teacher
    return ((self.role == ROLE_TEACHER) or (is_admin))
    
  end


  def role_name
    return {ROLE_USER=>"Schüler",ROLE_TEACHER=>"Lehrer",ROLE_ADMIN=>"Admin"}[self.role]
  end
  
  private
  
  def default_values
    self.role ||= ROLE_USER
  end
end
