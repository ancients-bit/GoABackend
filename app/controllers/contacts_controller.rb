class ContactsController < ApplicationController
  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      render json: { message: "Thanks for reaching out!" }, status: :created
    else
      render json: { errors: @contact.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def contact_params
    permitted = [:full_name, :email, :message, :organisation, :phone_number, :subject]
    if params[:contact].is_a?(ActionController::Parameters)
      params.require(:contact).permit(*permitted)
    else
      params.permit(*permitted)
    end
  end
end
