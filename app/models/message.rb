class Message < ActiveRecord::Base
	before_create :send_message

private

  def send_message
  	response = RestClient::Request.new(
  		:method => :post,
  		:url => 'https://api.twilio.com/2010-04-01/Accounts/AC01d7f8f103c3ceecfccb3ee6fc81d787/Messages.json',
  		:user => 'AC01d7f8f103c3ceecfccb3ee6fc81d787',
  		:password => '160290b1bc6571a53d150c7839e15639',
  		:payload => { :Body => body,
  					  :From => from,
  					  :To => to }
  		).execute
  end
end