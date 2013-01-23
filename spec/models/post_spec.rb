require 'spec_helper'

describe Comment do
	before {@post = Post.new( body: "hello", title: "hi" ) }   
  subject {@post}

  it { should respond_to(:body, :title) }


  describe "when BODY is not present" do
    before { @post.body = "" }
    it { should_not be_valid  }
  end

   describe "when TITLE is not present" do
    before { @post.title = "" }
    it { should_not be_valid  }
  end
end
