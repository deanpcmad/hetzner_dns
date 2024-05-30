require "test_helper"

class ConfigurationTest < Minitest::Test

  def setup
    HetznerDNS.config.api_token = "abc123"
  end

  def test_api_token
    assert_equal "abc123", HetznerDNS.config.api_token
  end

end
