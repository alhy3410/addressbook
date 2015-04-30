require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/Addressbook')
require('./lib/Contact')
require('pry')

get('/') do
  erb(:index)
end

get('addressbooks/new') do
  erb(:addressbooks_form)
end

get('/addressbooks') do
  @addressbooks = Addressbook.all()
  erb(:addressbooks)
end


post('/addressbooks') do
  @name = params.fetch('address_book_name')
  Addressbook.new({:name => @name}).save()
  erb(:addressbooks_success)
end

get('/contacts/:id') do
  @contacts = Contact.all()
  @contact = Contact.find(params.fetch('id'))
  erb(:contacts)
end

get('/addressbooks/:id') do
  @contacts = Contact.all()
  @addressbook = Addressbook.find(params.fetch('id').to_i())
  erb(:addressbooks_form)
end

get('/addressbooks/:id/contacts/new') do
  @addressbook = Addressbook.find(params.fetch('id').to_i())
  erb(:addressbook_information_form)
end

post('/contacts') do
  first_name = params.fetch('first_name')
  last_name = params.fetch('last_name')
  birth_month = params.fetch('birth_month')
  @contact = Contact.new({:first_name => first_name,:last_name => last_name,:birth_month => birth_month})
  @contact.save()
  @addressbook = Addressbook.find(params.fetch('id').to_i())
  @addressbook.add_contact(@contact)
  erb(:addressbooks_success)
end
