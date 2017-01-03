require 'rails_helper'

RSpec.describe LoansController, type: :controller do

  context 'GET /' do
    it 'returns the home page' do
      get :index
      expect(response).to render_template :index
    end
  end

  context 'GET loans/extends' do
    it 'returns response success' do
      get :extends,:data => {:id => 3}
      expect(response).to have_http_status(302)
    end

  end

end