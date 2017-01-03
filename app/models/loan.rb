class Loan < ApplicationRecord
  has_many :loan_extention_reqs
  belongs_to :book
  belongs_to :user
end
