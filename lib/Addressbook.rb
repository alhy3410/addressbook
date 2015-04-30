class Addressbook
  @@all_addressbooks = []
  attr_reader(:name)


  define_method(:initialize) do |attributes|
    @name = attributes[:name]
    @id = @@all_addressbooks.length() + 1
    @contacts = []
  end

  define_singleton_method(:all) do
    @@all_addressbooks
  end

  define_method(:save) do
    @@all_addressbooks.push(self)
  end

  define_singleton_method(:clear) do
    @@all_addressbooks = []
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |identification|
    foundaddressbook = nil
    @@all_addressbooks.each() do |addressbooks|
      if addressbooks.id().eql?(identification)
        foundaddressbook = addressbooks
      end
    end
    foundaddressbook
  end

  define_method(:contacts) do
    @contacts
  end

  define_method(:add_contact) do |contact|
    @contacts.push(contact)
  end
end
