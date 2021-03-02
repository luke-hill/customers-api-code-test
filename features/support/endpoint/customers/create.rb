module Endpoint
  module Customers
    class Create
      def url
        "https://automation-engineer-test.herokuapp.com/customer"
      end

      def body
        {
          "id" => rand(100_000_000),
          "name" => "John doe",
          "email" => "johndoe@bonhams.com"
        }
      end
    end
  end
end
