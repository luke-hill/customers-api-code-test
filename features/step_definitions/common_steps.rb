Given("the {word} is {word}") do |parameter, issue|
  @request[parameter] = :foo
end

When("I submit the request") do
  @response = @request.perform
  @response_code = @request.response_code
end

Then("I get a {int} response") do |code|
  expect(@response_code).to eq(code)
end
