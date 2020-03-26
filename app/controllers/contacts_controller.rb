class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end
  def create
    @contact = contact_params
    if @contact.save
      redirect_to new_contact_path
    else
      render :new
    end
  end
  private
  def contact_params
    Contact.create(name: params[:contact][:name], email: params[:contact][:email], content: params[:contact][:content] )
  end
end
