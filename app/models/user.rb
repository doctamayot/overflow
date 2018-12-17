class User < ApplicationRecord

  has_many :questions
  has_many :answers
  has_many :comments

 devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Returns the hash digest of the given string.
  
end
