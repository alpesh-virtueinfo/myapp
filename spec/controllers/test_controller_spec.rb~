require 'spec_helper'

describe TestController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
    it "loads all of the posts into @posts" do
      post1, post2 = Test.create!, Test.create!
      get :index

      expect(assigns(:posts)).to match_array([post1, post2])
    end
  end

end
