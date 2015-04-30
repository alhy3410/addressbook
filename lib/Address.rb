class Address
  @@all_addresses = []
  attr_reader(:home_address)

  define_method(:initialize) do |attributes|
    @home_address = attributes[:home_address]
  end
end
