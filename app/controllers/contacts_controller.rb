class ContactsController < ApplicationController
  # GET /contacts/new
  def new
    @contact = ContactUs.new
  end

  # POST /contacts
  def create
    @contact = ContactUs.new(params[:contact_us].merge(send_to: current_site.email))

    if @contact.valid?
      @contact.deliver
      redirect_to new_contact_path, notice: 'Thank you for your message, we will contact you shortly!'
    else
      render action: "new"
    end
  end

end
