class Book < ApplicationRecord
  validates :title, presence: true
  has_many :loans
  has_many :users, :through => :loans
  #belongs_to :type

  #Define the cases for all the types of the books ad use it in the controller
end
