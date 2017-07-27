class User < ActiveRecord::Base
  validates   :email, :name, :password_hash, presence: true
  validates   :email, uniqueness: true
  validates   :email, format: { with: /.*\@.*\..*/ }

  has_many  :questions
  has_many  :answers

  # def password()
  # end
  # def password=()
  # end

end
