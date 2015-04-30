require('rspec')
require('Addressbook')
require('Contact')

describe('Contact') do

  before() do
    Contact.clear()
  end


  describe('#first_name') do
    it("will add the first name of the contact infomation") do
      new_contact = Contact.new({:first_name => "John",:last_name => "Smith", :birth_month => "July"})
      expect(new_contact.first_name()).to(eq("John"))
    end
  end

  describe('#last_name') do
    it("will add the last name of the contact information") do
      new_contact = Contact.new({:first_name => "John",:last_name => "Smith", :birth_month => "July"})
      expect(new_contact.last_name()).to(eq("Smith"))
    end
  end

  describe('#birth_month') do
    it("will add the birth month of the contact") do
      new_contact = Contact.new({:first_name => "John", :last_name => "Smith", :birth_month => "July"})
      expect(new_contact.birth_month()).to(eq("July"))
    end
  end

  describe('.clear') do
    it("will clear all contacts from the list") do
      Contact.new({:first_name => "John", :last_name => "Smith", :birth_month => "July"}).save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('.all') do
    it("will show all contacts") do
      new_contact = Contact.new({:first_name => "John", :last_name => "Smith", :birth_month => "July"})
      new_contact.save()
      expect(Contact.all()).to(eq([new_contact]))
    end
  end

end
