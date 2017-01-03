class CreateLoansExtensionReq < ActiveRecord::Migration[5.0]
  def change
    create_table :loan_extension_reqs do |t|
      t.date 'return_date'
      t.string 'status'
      t.integer 'loan_id'
    end
  end
end
