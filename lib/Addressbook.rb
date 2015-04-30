class Addressbook
  @@all_addressbooks = []
  attr_reader(:name)


  define_method(:initialize) do |attributes|
    @name = attributes[:name]
  end

  define_singleton_method(:all) do
    @@all_addressbooks
  end

  define_method(:save) do
    @@all_addressbooks.push(self)
  end

end
