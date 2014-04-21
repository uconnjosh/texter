require 'spec_helper'

describe Message do 
	it "doesn't save the message if twilio gives an error" do 
		message = Message.new(:body => 'hi', :to => '1111111', :from => '5039463641')
		message.save.should be_false
	end
end