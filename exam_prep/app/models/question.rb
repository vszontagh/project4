class Question < ActiveRecord::Base
  belongs_to :category
  belongs_to :lesson
  has_many :answers
end
