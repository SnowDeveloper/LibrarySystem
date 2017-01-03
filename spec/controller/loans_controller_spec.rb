require 'rails_helper'

RSpec.describe LoansController, type: :controller do

  context 'GET /' do
    it 'returns the home page' do
      get :index
      expect(response).to render_template :index
    end
  end

end