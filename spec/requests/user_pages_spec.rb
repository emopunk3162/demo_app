require 'spec_helper'

describe "UserPages" do
  subject { page }

  describe "signup page" do
  	before { visit signup_path } # go to locolhost:30000/users/new

  	it { should have_selector('h1',text:'sign up') } # show text h1
  end
end
