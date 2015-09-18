class Answer < ActiveRecord::Base
  belongs_to :question
  # has_many :categories, through: :questions
end
