class Loan < ApplicationRecord
  has_many :loan_extention_reqs
  belongs_to :book, optional: true
  belongs_to :user, optional: true
end
