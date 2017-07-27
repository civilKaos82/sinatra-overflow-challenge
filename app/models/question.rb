class Question < ActiveRecord::Base
  validate :title, :content, presence: true

  has_many    :answers
  belongs_to  :user
end
