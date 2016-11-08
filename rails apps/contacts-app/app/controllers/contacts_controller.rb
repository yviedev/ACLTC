class ContactsController < ApplicationController
  def first_contact
    @title = "First contacts"
    @contact = Contact.find_by(id: 1)
    render 'first_contact.html.erb'
  end

  def all_contacts
    @title = "All contacts"
    @contacts = Contact.all
    render 'all_contacts.html.erb'
  end
end
