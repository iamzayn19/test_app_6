class User < ApplicationRecord
  has_many :articles
  validates :first_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :last_name, presence: true, format: { with: /\A[a-zA-Z]+\z/, message: "only allows letters" }
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  def self.authenticated(email,password)
    User.where(email: email, password: password)
  end 
end 