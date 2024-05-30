module HetznerDNS
  class Zone < Object

    class << self

      def list
        response = Client.get_request("zones")
        Collection.from_response(response, type: Zone, key: "zones")
      end

      def create(name:, ttl: nil)
        response = Client.post_request("zones", body: { name: name, ttl: ttl })
        Zone.new(response.body)
      end

    end

  end
end
