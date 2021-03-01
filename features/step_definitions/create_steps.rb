Given("I have a valid request to create a customer") do
  @request = Endpoint::Customers::Create.new
end

Then("the customer is created") do
  expect(@response.first)
    .to eq(
      {
        "id": @request.body["id"],
        "name": @request.body["name"],
        "email": @request.body["email"]
      }
    )
end
