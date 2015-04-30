require('Addressbook')
require('rspec')

describe('Addressbook') do
  before() do
    Addressbook.clear()
  end


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

  describe('.clear') do
    it("saves the address book") do
      Addressbook.new({:name => "Friends Address Book"}).save()
      Addressbook.clear()
      expect(Addressbook.all()).to(eq([]))
    end
  end

  describe('#id') do
    it('returns the id of the addressbook') do
      friends_address_book_new = Addressbook.new({:name => "Friends Address Book"})
      expect(friends_address_book_new.id()).to(eq(1))
    end
  end

  describe('.find') do
    it('returns the addressbook by the id number') do
      friends_address_book_new = Addressbook.new({:name => "Friends Address Book"})
      friends_address_book_new.save()
      expect(Addressbook.find(friends_address_book_new.id())).to(eq(friends_address_book_new))
    end
  end

end
