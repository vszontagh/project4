class User < ActiveRecord::Base

  has_many :plays

  validates :username, presence: true, uniqueness: {case_sensitive: false}
  validates :password, presence: true
  validates :password_confirmation, confirmation: true

  has_secure_password

end
