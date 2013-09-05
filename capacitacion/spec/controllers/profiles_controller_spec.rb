require 'spec_helper'

describe ProfilesController do

  describe "GET 'show_user'" do
    it "returns http success" do
      get 'show_user'
      response.should be_success
    end
  end

end
