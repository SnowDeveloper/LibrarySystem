class LoanExtentionReq < ApplicationRecord
  belongs_to :loan, :dependent => :destroy
end
