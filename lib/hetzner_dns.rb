require "faraday"

require_relative "hetzner_dns/version"

module HetznerDNS

  autoload :Configuration, "hetzner_dns/configuration"
  autoload :Client, "hetzner_dns/client"
  autoload :Collection, "hetzner_dns/collection"
  autoload :Error, "hetzner_dns/error"
  autoload :Object, "hetzner_dns/object"

  class << self
    attr_writer :config
  end

  def self.configure
    yield(config) if block_given?
  end

  def self.config
    @config ||= HetznerDNS::Configuration.new
  end

  autoload :Zone, "hetzner_dns/models/zone"

end
