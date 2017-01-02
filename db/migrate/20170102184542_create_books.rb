class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string 'call_no'
      t.string 'title'
      t.string 'authors'
    end
  end
end
