class Book < ApplicationRecord
  validates :title, presence: true
  has_many :loans
  has_many :users, :through => :loans
end
