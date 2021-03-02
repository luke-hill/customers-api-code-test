Given("the {string} is {string}") do |parameter, issue|
  data_store = YAML.load_file("data/customer.yml")
  new_value = data_store.dig("customer", parameter, issue)
  puts "Altering value of Param: #{parameter} to one that is #{issue}: #{new_value}"
  @post_body[parameter] = data_store.dig("customer", parameter, issue)
end

When("I submit the request") do
  response = Curl.post(@post_url, @post_body)
  @response_body = JSON.parse(response.body)
  @response_code = response.response_code
end

Then("I get a {int} response") do |code|
  expect(@response_code).to eq(code)
end
