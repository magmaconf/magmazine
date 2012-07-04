require 'spec_helper'

describe Admin::TranslationsController do

  let(:user) { User.create! email: 'admin@test.com', password: '123test'  }

  before { sign_in user }

  describe "#index" do
    specify do
      get :index
      response.should be_successful
    end
  end

  describe "#show" do
    let(:translation) do
      Translation.create locale: 'en', key: 'test', value: 'test'
    end

    before do

    end

    specify do
      get :show, id: translation.id
      response.should be_successful
      assigns(:translation).should eq(translation)
    end
  end

  describe "#update" do
    let(:translation) do
      Translation.create locale: 'en', key: 'test', value: 'test'
    end

    specify do
      put :update, id: translation.id
      response.should redirect_to(translations_path)
    end
  end

end
