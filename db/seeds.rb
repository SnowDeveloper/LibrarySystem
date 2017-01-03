# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

more_users = User.create([{username: 'user1'}, {username: 'user2'}])
more_books = [{title: 'The Ruby way', authors: 'testauthor', call_no: '1'},
                          {title: 'Secrets of the JavaScript Ninja', authors: 'testauthor2', call_no: '2'}]

more_loans = [{start_date: '09-01-2016', return_date: '23-01-2016', cost: 1.5},
              {start_date: '04-01-2016', return_date: '16-01-2016', cost: 2.5}]

more_loans.each do |loan|
  new_loan = Loan.new({:start_date => loan[:start_date], :return_date => loan[:return_date]})
  new_loan.user = more_users.last
  new_loan.book = Book.create(more_books.pop)
  new_loan.save!
end
