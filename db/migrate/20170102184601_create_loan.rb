class CreateLoan < ActiveRecord::Migration[5.0]
  def change
    create_table :loans do |t|
      t.date 'start_date'
      t.date 'return_date'
      t.float 'cost'
      t.integer 'user_id'
      t.integer 'book_id'
    end
  end
end
