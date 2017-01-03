
Given /the following loans exist/ do |loans_table|
  loans_table.hashes.each do |loan|
    # each returned element will be a hash whose key is the table header.
    # you should arrange to add that loan to the database here.
    user = User.create({:username => loan[:username]})
    book = Book.create({:title => loan[:title]})
    new_loan = Loan.new({:start_date => loan[:start_date], :return_date => loan[:return_date]})
    new_loan.user = user
    new_loan.book = book
    new_loan.save!

  end
end

