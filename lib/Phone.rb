class Phone
  @@all_phones = []
  attr_reader(:home_phone, :work_phone, :cell_phone)

  define_method(:initialize) do |attributes|
    @home_phone = attributes[:home_phone]
    @work_phone = attributes[:work_phone]
    @cell_phone = attributes[:cell_phone]
  end
  define_singleton_method(:clear) do
    @@all_phones = []
  end

  define_singleton_method(:all) do
    @@all_phones
  end

  define_method(:save) do
    @@all_phones.push(self)
  end
end
