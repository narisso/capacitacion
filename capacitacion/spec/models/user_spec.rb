require 'spec_helper'

describe User do
  before(:each) do
  	empty_database
  #  @user = User.new(valid_user_attributes)
 #  @user = User.new(:name => 'Scott', :last_name => 'Motte', :username => 'hola', :password => '1234')
  end

  it "should be valid when new" do
    @user.should be_valid
  end

  it "should not be valid if missing name" do
    @user.name = ""
    @user.should_not be_valid
  end

  it "should not be valid if missing last_name" do
    @user.last_name = ""
    @user.should_not be_valid
  end
end
