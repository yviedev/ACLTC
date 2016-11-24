class ContactsController < ApplicationController

  def index

    @title = "All contacts"

    # Only allow users to see their own contacts; users cannot see other users’ contacts.
    if session[:user_id]
      @contacts = Contact.where(user_id: session[:user_id])
      # @contacts = current_user.contacts # shows all current contacts
    else
      @contacts = Contact.all
      # @contact = [] # to see nothing for users not logged in
      # redirect = '/login'
    end

    render 'index.html.erb'

  end

  def show
    @title = "Contact page"
    @contact = Contact.find_by(id: params["id"])

    # if session id is equal to contact user id, show page
    # if session[:user_id] == @contact.user_id
    if current_user.id == @contact.user_id
      render 'show.html.erb'
    else
    # else give error "You don't have permission to view this contact and redirect to index
      flash[:warning] = "You don't have permission to view this contact."
      redirect_to '/contacts'
    end
  end

  def new
    @title = "New contact"
    render 'new.html.erb'
  end

  def create
    @title = "Created contact"
    coordinates = Geocoder.coordinates(params["address"])
    contact = Contact.new(
      first_name: params["first_name"],
      middle_name: params["middle_name"],
      last_name: params["last_name"],
      email: params["email"],
      phone_number: params["phone_number"],
      bio: params["bio"],
      address: params["address"],
      latitude: coordinates[0],
      longitude: coordinates[1],
      user_id: current_user.id
      )
    contact.save
    flash[:success] = "Congrats. You made a new contact."
    redirect_to "/contacts/#{contact.id}"
    #render 'create.html.erb'
  end

  def edit
    @title = "Edit contact"
    @contact = Contact.find_by(id: params["id"])

    # if session id is equal to contact user id, show page
    if current_user.id == @contact.user_id
      render 'edit.html.erb'
    else
    # else give error "You don't have permission to view this contact and redirect to index
      flash[:warning] = "You don't have permission to view this contact."
      redirect_to '/contacts'
    end
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

    # if session id is equal to contact user id, show page
    if current_user.id == @contact.user_id
    # kill it
      contact.destroy
      flash[:danger] = "Your contact has been deleted."
    else
    # else give error "You don't have permission to view this contact and redirect to index
      flash[:warning] = "You don't have permission to view this contact."
    end

    redirect_to '/contacts'

  end

  def all_johns
    @title = "All Johns"
    @contacts = Contact.all
    render 'all_johns.html.erb'
  end

end
