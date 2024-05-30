module HetznerDNS
  class Zone < Object

    class << self

      def list
        response = Client.get_request("zones")
        Collection.from_response(response, type: Zone, key: "zones")
      end

      def create(name:, ttl: nil)
        response = Client.post_request("zones", body: { name: name, ttl: ttl })
        Zone.new(response.body["zone"])
      end

      def retrieve(id:)
        response = Client.get_request("zones/#{id}")
        Zone.new(response.body["zone"])
      end

      def update(id:, name:, ttl: nil)
        response = Client.put_request("zones/#{id}", body: { name: name, ttl: ttl })
        Zone.new(response.body["zone"])
      end

      def delete(id:)
        response = Client.delete_request("zones/#{id}")
        response.success?
      end

      def records(id:)
        response = Client.get_request("records", params: { zone_id: id })
        Collection.from_response(response, type: Record, key: "records")
      end

      def create_record(zone:, name:, type:, value:, ttl: nil)
        response = Client.post_request("records", body: { zone_id: zone, name: name, type: type, value: value, ttl: ttl })
        Record.new(response.body["record"])
      end

      def update_record(zone:, record:, name:, type:, value:, ttl: nil)
        response = Client.put_request("records/#{record}", body: { zone_id: zone, name: name, type: type, value: value, ttl: ttl })
        Record.new(response.body["record"])
      end

    end

  end
end
