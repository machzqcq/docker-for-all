Given(/^I GET root$/) do
  @response = RestClient.get "#{ENV['BASE_URL']}"
end

Then(/^I expect "([^"]*)" and retrieve all quotes$/) do |status_code|
  expect(@response.code.to_s).to eql(status_code)
  expect(JSON.parse(@response.body).size).to be > 0
end

Given(/^I GET "([^"]*)"$/) do |context_path|
  @response = RestClient.get "#{ENV['BASE_URL']}#{context_path}"
end

Then(/^I expect "([^"]*)" and print the quote$/) do |status_code|
expect(@response.code.to_s).to eql(status_code)
expect(JSON.parse(@response.body).size).to be > 0
puts @response.body
end

Given(/^I POST a quote$/) do
  @my_quote = {
    author: "Pradeep",
    text: "The best experiences in ones life cannot be articulated"
}

@response = RestClient.post "#{ENV['BASE_URL']}/quote", @my_quote.to_json , :content_type => :json
end

Then(/^I expect "([^"]*)" and GET the quote posted$/) do |status_code|
expect(@response.code.to_s).to eql(status_code)

all_quotes_response = RestClient.get "#{ENV['BASE_URL']}"
all_quotes = JSON.parse(all_quotes_response.body)
puts all_quotes

end


Given(/^I DEL quote "([^"]*)"$/) do |index|
  @response = RestClient.delete "#{ENV['BASE_URL']}/quote/#{index}"
end

Then(/^I expect "([^"]*)" and verify that the quote is deleted$/) do |status_code|
  expect(@response.code.to_s).to eql(status_code)
  all_quotes_response = RestClient.get "#{ENV['BASE_URL']}"
  puts all_quotes_response.body

end
