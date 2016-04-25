require 'rubygems'
require 'twilio-ruby'

account_sid = 'AC6f16152fd3dabca6e5073993d078625f'
auth_token = 'e6e2c23b9ef188721abce7c5856774c3'

@client = Twilio::REST::Client.new(account_sid, auth_token)

puts"You may ask The Magic 8 ball any question"
question = gets

answer = [
	"It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes, definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"
]




message = @client.account.messages.create(
  :from => "+1 908-731-5848",
  :to => "+1 908-397-8453",
  :body => answer.shuffle.sample
)

puts message.to