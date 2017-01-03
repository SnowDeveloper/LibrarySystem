require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'Relationship' do

    before do
      @book = FactoryGirl.create(:book)
    end

    it 'should not save without title' do
      book = Book.new
      expect(book.save).to be_falsy
    end

    it 'has a valid factory' do
      expect(build(:book)).to be_valid
    end

  end

end
