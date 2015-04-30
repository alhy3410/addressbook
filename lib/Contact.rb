class Contact
  @@all_contacts = []
  attr_reader(:first_name, :last_name, :birth_month)

  define_method(:initialize) do |attributes|
    @first_name = attributes[:first_name]
    @last_name = attributes[:last_name]
    @birth_month = attributes[:birth_month]
  end

  define_singleton_method(:clear) do
    @@all_contacts = []
  end

  define_singleton_method(:all) do
    @@all_contacts
  end

  define_method(:save) do
    @@all_contacts.push(self)
  end
end
