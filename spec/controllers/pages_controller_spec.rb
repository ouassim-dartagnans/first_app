require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  render_views

  describe "GET 'home'" do
    it "devrait réussir" do
      get 'home'
      response.should be_success
    end

    it "devrait avoir le bon titre" do
      get 'home'
      response.should have_selector("title",
                        :content => "Accueil")
    end
  end

  describe "GET 'contact'" do
    it "devrait réussir" do
      get 'contact'
      response.should be_success
    end

    it "devrait avoir le bon titre" do
      get 'contact'
      response.should have_selector("title",
                        :content =>
                          "Contact")
    end
  end

  describe "GET 'about'" do
    it "devrait réussir" do
      get 'about'
      response.should be_success
    end

    it "devrait avoir le bon titre" do
      get 'about'
      response.should have_selector("title",
                        :content =>
                          "À Propos")
    end
  end
end