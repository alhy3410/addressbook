class Address
  @@all_addresses = []
  attr_reader(:home_address,:office_address)

  define_method(:initialize) do |attributes|
    @home_address = attributes[:home_address]
    @office_address = attributes[:office_address]
  end

  define_singleton_method(:clear) do
    @@all_addresses = []
  end

  define_singleton_method(:all) do
    @@all_addresses
  end

  define_method(:save) do
    @@all_addresses.push(self)
  end
end
