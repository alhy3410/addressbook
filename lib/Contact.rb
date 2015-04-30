class Contact
  @@all_contacts = []
  attr_reader(:first_name, :last_name, :birth_month)

  define_method(:initialize) do |attributes|
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @birth_month = attributes[:birth_month]
    @contact_id = @@all_contacts.length() + 1

  end

  define_singleton_method(:clear) do
    @@all_contacts = []
  end

  define_method(:name) do
    @name = @first_name + @last_name
  end


  define_singleton_method(:all) do
    @@all_contacts
  end

  define_method(:save) do
    @@all_contacts.push(self)
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:find) do |contactid|
    found_contact = nil
    @@all_contacts.each() do |contact|
      if contact.id.eql?(contactid)
        found_contact = contact
      end
    end
    found_contact
  end
end
