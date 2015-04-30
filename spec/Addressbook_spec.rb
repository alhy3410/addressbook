require('rspec')
require('Addressbook')
require('Contact')
require('Phone')

describe('Addressbook') do

  before() do
    Contact.clear()
    Phone.clear()
  end


  describe('Contact#first_name') do
    it("will add the first name of the contact infomation") do
      new_contact = Contact.new({:first_name => "John"})
      expect(new_contact.first_name()).to(eq("John"))
    end
  end

  describe('Contact#last_name') do
    it("will add the last name of the contact information") do
      new_contact = Contact.new({:last_name => "Smith"})
      expect(new_contact.last_name()).to(eq("Smith"))
    end
  end

  describe('Contact#birth_month') do
    it("will add the birth month of the contact") do
      new_contact = Contact.new({:birth_month => "July"})
      expect(new_contact.birth_month()).to(eq("July"))
    end
  end

  describe('Phone#home_phone') do
    it("return contact home phone number") do
      new_phones = Phone.new({:home_phone => "555-555-5555"})
      expect(new_phones.home_phone()).to(eq("555-555-5555"))
    end
  end

  describe('Phone#work_phone') do
    it("return contact work phone number") do
      new_phones = Phone.new({:work_phone => "555-555-5556"})
      expect(new_phones.work_phone()).to(eq("555-555-5556"))
    end
  end

  describe('Phone#cell_phone') do
    it("return contact cell phone number") do
      new_phones = Phone.new({:cell_phone => "555-555-5557"})
      expect(new_phones.cell_phone()).to(eq("555-555-5557"))
    end
  end



  describe('Contact.clear') do
    it("will clear all contacts from the list") do
      Contact.new({:first_name => "John", :last_name => "Smith", :birth_month => "July"}).save()
      Contact.clear()
      expect(Contact.all()).to(eq([]))
    end
  end

  describe('Contact.all') do
    it("will show all contacts") do
      new_contact = Contact.new({:first_name => "John", :last_name => "Smith", :birth_month => "July"})
      new_contact.save()
      expect(Contact.all()).to(eq([new_contact]))
    end
  end

  describe('Phone.clear') do
    it("will clear all phones from the list") do
      Phone.new({:home_phone => "555-555-5555"}).save()
      Phone.clear()
      expect(Phone.all()).to(eq([]))
    end
  end

end
