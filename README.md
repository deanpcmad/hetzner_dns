# HetznerDNS

HetznerDNS is a Ruby library for the Hetzner DNS API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem "hetzner_dns"
```

## Usage

### Set Client Details

Firstly you'll need to create an API Token on [Hetzner DNS](https://dns.hetzner.com/settings/api-token) site
and then configure it like below.

```ruby
HetznerDNS.configure do |config|
  config.api_token = ENV["HETZNER_DNS_TOKEN"]
end
```

### Zones

```ruby
# Retrieve a list of Zone's
HetznerDNS::Zone.list

# Create a zone
# TTL is optional
HetznerDNS::Zone.create(name: "mydomain.com", ttl: 86400)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/deanpcmad/hetzner_dns.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
