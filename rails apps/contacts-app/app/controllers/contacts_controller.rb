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

  def index
    @title = "All contacts"
    @contacts = Contact.all
    render 'index.html.erb'
  end

  def show
    @title = "Contact page"
    @contact = Contact.find_by(id: params["id"])
    render 'show.html.erb'
  end

  def new
    @title = "New contact"
    render 'new.html.erb'
  end

  def create
    @title = "Created contact"
    coordinates = Geocoder.coordinates(params["address"])
    contact = contact.new(
      first_name: params["first_name"],
      middle_name: params["middle_name"],
      last_name: params["last_name"],
      email: params["email"],
      phone_number: params["phone_number"],
      bio: params["bio"],
      address: params["address"],
      latitude: coordinates[0],
      longitude: coordinates[1]
      )
    contact.save
    flash[:success] = "Congrats. You made a new contact."
    redirect_to "/contacts/#{contact.id}"
    #render 'create.html.erb'
  end

  def edit
    @title = "Edit contact"
    @contact = Contact.find_by(id: params["id"])
    render 'edit.html.erb'
  end

  def update
    @title = "Update contact"
    coordinates = Geocoder.coordinates(params["address"])
    contact = Contact.find_by(id: params["id"])
    contact.update(
      first_name: params["first_name"], 
      middle_name: params["middle_name"],
      last_name: params["last_name"], 
      email: params["email"], 
      phone_number:params["phone_number"], 
      bio: params["bio"], 
      address: params["address"],
      latitude: coordinates[0],
      longitude: coordinates[1])

    flash[:info] = "Congrats. You updated your contact."
    redirect_to "/contacts/#{contact.id}"
  end

  def destroy
    @title = "Delete contact"
    # grab the recipe by id
    contact = Contact.find_by(id: params["id"])
    # kill it
    contact.destroy
    flash[:danger] = "Your contact has been deleted."
    redirect_to "/contacts/"
  end

  def all_johns
    @title = "All Johns"
    @contacts = Contact.all
    render 'all_johns.html.erb'
  end

end
