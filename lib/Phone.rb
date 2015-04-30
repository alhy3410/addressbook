class Phone
  @@allphones = []
  attr_reader(:home_phone, :work_phone, :cell_phone)

  define_method(:initialize) do |attributes|
    @home_phone = attributes[:home_phone]
    @work_phone = attributes[:work_phone]
    @cell_phone = attributes[:cell_phone]
  end
end
