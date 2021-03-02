Given("I have a valid request to create a customer") do
  Endpoint::Customers::Create.new.tap do |endpoint|
    @post_url = endpoint.url
    @post_body = endpoint.body
  end
end

Then("the customer is created") do
  expect(@response)
    .to eq(
      {
        "id" => @post_body["id"].to_s,
        "name" => @post_body["name"],
        "email" => @post_body["email"]
      }
    )
end
