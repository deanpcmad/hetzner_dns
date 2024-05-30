require "test_helper"

class ZoneTest < Minitest::Test

  def test_zone_list
    zones = HetznerDNS::Zone.list
    assert_equal HetznerDNS::Collection, zones.class
    assert_equal HetznerDNS::Zone, zones.data.first.class
  end

  def test_zone_create
    zone = HetznerDNS::Zone.create(name: "deanpcmad.dev")

    assert_equal HetznerDNS::Zone, zone.class
    assert_equal "deanpcmad.dev", zone.name
  end

  def test_zone_retrieve
    zone = HetznerDNS::Zone.retrieve(id: "yE67d3N5DNrX4pMfcDCi6A")
    assert_equal HetznerDNS::Zone, zone.class
    assert_equal "yE67d3N5DNrX4pMfcDCi6A", zone.id
    assert_equal "deanpcmad.dev", zone.name
  end

  def test_zone_update
    zone = HetznerDNS::Zone.update(id: "yE67d3N5DNrX4pMfcDCi6A", name: "deanpcmad.dev", ttl: 69)

    assert_equal HetznerDNS::Zone, zone.class
    assert_equal 69, zone.ttl
  end

  def test_zone_delete
    zone = HetznerDNS::Zone.delete(id: "yE67d3N5DNrX4pMfcDCi6A")

    assert zone
  end

end
