class Email
  @@all_emails = []
  attr_reader(:personal_email,:work_email)

  define_method(:initialize) do |attributes|
    @personal_email = attributes[:personal_email]
    @work_email = attributes[:work_email]
  end

end
