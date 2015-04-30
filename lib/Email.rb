class Email
  @@all_emails = []
  attr_reader(:personal_email,:work_email)

  define_method(:initialize) do |attributes|
    @personal_email = attributes[:personal_email]
    @work_email = attributes[:work_email]
  end

  define_singleton_method(:clear) do
    @@all_emails = []
  end

  define_singleton_method(:all) do
    @@all_emails
  end

  define_method(:save) do
    @@all_emails.push(self)
  end
end
