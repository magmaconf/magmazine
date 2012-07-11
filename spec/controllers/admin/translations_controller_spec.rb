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
      Translation.create id: 1, locale: 'en', key: 'test', value: 'test'
    end

    before do
      Translation.should_receive(:find).and_return translation
      translation.should_receive(:update_attributes).and_return true
      put :update, id: translation.id, translation: {query: "something"}
    end

    specify do
      response.should redirect_to(filtered_translations_path("something"))
    end

    specify do
      flash[:notice].should_not be_nil
    end

  end

  describe "#load_translations" do
    before do
      Translation.should_receive(:filtered_trans).with "magmazine"
    end

    specify do
      get :index
      response.should be_success
    end

  end

end
