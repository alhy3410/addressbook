require('Addressbook')
require('rspec')

describe('Addressbook') do
  describe('#name') do
    it("returns the name of the address book you are going to create") do
      friends_address_book_new = Addressbook.new({:name => "Friends Address Book"})
      expect(friends_address_book_new.name()).to(eq("Friends Address Book"))
    end
  end

  describe('#save') do
    it("saves the address book") do
      friends_address_book_new = Addressbook.new({:name => "Friends Address Book"})
      friends_address_book_new.save()
      expect(Addressbook.all()).to(eq([friends_address_book_new]))
    end
  end
end
