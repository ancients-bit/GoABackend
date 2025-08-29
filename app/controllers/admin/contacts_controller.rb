module Admin
  class ContactsController < ApplicationController
    before_action :authenticate_admin_user!

    def index
      @contacts = Contact.all.order(created_at: :desc)
      render json: @contacts
    end

    def show
      @contact = Contact.find(params[:id])
      render json: @contact
    end

    def new
      @contact = Contact.new
    end

    def edit
      @contact = Contact.find(params[:id])
    end

    def create
      @contact = Contact.new(contact_params)
      if @contact.save
        render json: { message: 'Contact was successfully created.', data: @contact }, status: :created
      else
        render json: { errors: @contact.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def update
      @contact = Contact.find(params[:id])
      if @contact.update(contact_params)
        render json: { message: 'Contact was successfully updated.', data: @contact }, status: :ok
      else
        render json: { errors: @contact.errors.full_messages }, status: :unprocessable_entity
      end
    end

    def destroy
      @contact = Contact.find(params[:id])
      @contact.destroy
      render json: { message: 'Contact was successfully deleted.' }, status: :ok
    end

    private

    def contact_params
      params.require(:contact).permit(:full_name, :email, :message, :organisation, :phone_number, :subject)
    end
  end
end
