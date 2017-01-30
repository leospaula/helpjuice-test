require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do

  describe "GET #index" do
    before(:each) do
      FactoryGirl.create_list(:article, 3)

      get :index
    end

    it { should respond_with 200 }
  end
end
