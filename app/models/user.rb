class User < ApplicationRecord
  has_many :articles
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :password, presence: true

  def self.authenticated(email,password)
    User.where(email: email, password: password)
  end 
end 