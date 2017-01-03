class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  has_many :books, :through => :loans
  has_many :loans
end
