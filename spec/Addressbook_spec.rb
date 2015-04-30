require('rspec')
require('Addressbook')
require('Contact')

describe('Contact') do
  describe('#first_name') do
    it("will add the first name of the contact infomation") do
      new_contact = Contact.new({:first_name => "John"})
      expect(new_contact.first_name()).to(eq("John"))
    end
  end
end
