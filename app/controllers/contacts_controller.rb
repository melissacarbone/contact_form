class ContactsController<ApplicationController
  before_action :set_contact, only: [:destroy, :show, :edit, :update]


  def new
    @contact = Contact.new
  end

  def update
    if @contact.update(contact_params)
      redirect_to @contact
    else
      render 'edit'
    end
  end

  def edit

  end

  def show

  end

  def index
    @contacts = Contact.all
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      redirect_to(@contact, notice: 'Contact was successfully created!')
    else
      render 'new'
    end
  end

  def destroy
    @contact.destroy
    redirect_to contacts_path
  end

  private
    def set_contact
      @contact = Contact.find(params[:id])
    end

    def contact_params
      params.require(:contact).permit(:email, :subject, :description, :first_name, :last_name)
    end
end
