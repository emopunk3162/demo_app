require 'spec_helper'

describe Comment do
	before {@comment = Comment.new( body: "hello" ) }   
  subject {@comment}

  it { should respond_to(:body) }


  describe "when BODY is not present" do
    before { @comment.body = "" }
    it { should_not be_valid  }
  end

end