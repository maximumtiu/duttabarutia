require 'rails_helper'

RSpec.describe TigersController, type: :controller do
  describe '#index' do
    it 'should respond with success' do
      get :index
      expect(response).to be_success
    end

    it 'should have a http response of 200' do
      get :index
      expect(response).to have_http_status(200)
    end

    it 'loads alls of the tigers' do
      number_of_tigers = 2
      number_of_tigers.times { Tiger.create }
      get :index
      # Assigns looks for an instance variable of the symbol name
      expect(assigns(:tigers).size).to eq(number_of_tigers)
    end
  end

  describe '#show' do
    context 'with a created tiger' do
      let(:tiger) { Tiger.create }

      it 'should respond with success' do
        get :show, id: tiger.id
        expect(response).to be_success
      end

      it 'should have a http response of 200' do
        get :show, id: tiger.id
        expect(response).to have_http_status(200)
      end

      it 'loads the tiger matching the given id' do
        get :show, id: tiger.id
        expect(assigns(:tiger)).to eq(tiger)
      end
    end
  end
end
