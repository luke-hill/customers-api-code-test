Given("the {word} is {word}") do |parameter, issue|
  @request[parameter] = :foo
end

When("I submit the request") do
  _response = Curl.post(@request.url, @request.body)
  @response = JSON.parse(_response.body)
  @response_code = _response.response_code
end

Then("I get a {int} response") do |code|
  expect(@response_code).to eq(code)
end
