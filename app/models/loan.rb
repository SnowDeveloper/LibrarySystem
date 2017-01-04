class Loan < ApplicationRecord
  has_many :loan_extention_reqs
  belongs_to :book, optional: true
  belongs_to :user, optional: true

  def can_be_extended(days)
    conflicts = Loan.where('user_id != ? and return_date > ?', self.user_id, (self.return_date + days.day)).count
    return false if conflicts >= 1
    self.loan_extention_reqs.count <= 4

  end

  def extend_by(days)
    new_date = self.return_date + days.day
    self.return_date = new_date
    self.loan_extention_reqs << LoanExtentionReq.new({return_date: new_date, status: 'reserved'})
    self.save!
  end

end
