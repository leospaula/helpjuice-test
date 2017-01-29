require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  describe "GET #index" do
    before(:each) do
      FactoryGirl.create_list(:article, 3)

      get :index, format: :json
    end

    it 'returns all articles' do
      expect(json_response.count).to eq(3)
    end

    it { should respond_with 200 }
  end
end
