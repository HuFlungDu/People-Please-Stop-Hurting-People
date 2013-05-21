class Signature < ActiveRecord::Base
  attr_accessible :email, :firstname, :lastname
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
                    format: { with: VALID_EMAIL_REGEX }, 
                    uniqueness: true

  validates :firstname, presence: true
  validates :lastname, presence: true
end
