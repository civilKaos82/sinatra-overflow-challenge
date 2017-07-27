require 'bcrypt'

class User < ActiveRecord::Base
  validates   :email, :name, :password_hash, presence: true
  validates   :email, uniqueness: true
  validates   :email, format: { with: /.*\@.*\..*/ }

  has_many  :questions
  has_many  :answers

  def password
    @password ||= BCrypt::Password.new(password_hash)
    @password
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def authenticate(entered_password)
    self.password == entered_password
  end

end
