require 'spec_helper'

describe Message, :vcr => true do 
	it 'adds an error if the to number is invalid' do
		message = Message.new(:body => 'hi',:to => '1111111', :from => '8603361346')
		message.save
		message.errors.messages[:base].should eq ["The 'To' number 1111111 is not a valid phone number."]
	end
	
	it "doesn't save the message if twilio gives an error" do 
		message = Message.new(:body => 'hi', :to => '1111111', :from => '5039463641')
		message.save.should be_false
	end
end