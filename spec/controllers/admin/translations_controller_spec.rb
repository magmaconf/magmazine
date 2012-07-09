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

  describe "#edit" do
    let(:translation) do
      Translation.create locale: 'en', key: 'test', value: 'test'
    end


    specify do
      get :edit, id: translation.id
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

  describe "#load_translations" do
    let(:query){}

    specify do
      Translation.should_receive(:filtered_trans).with("magmazine")
      get :index
      response.should be_succes
    end

  end

end
