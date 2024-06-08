class Organizations::Staff::CustomPagesController < Organizations::BaseController
  layout "dashboard"
  before_action :set_custome_page, only: %i[edit update]
  def edit
  end

  def update
    if @custome_page.update(custome_page_params)
      redirect_to edit_staff_custome_page_path, notice: t(".success")
    else
      redirect_to edit_staff_custome_page_path, alert: @custome_page.errors.full_messages.to_sentence
    end
  end

  private

  def custome_page_params
    params.require(:custome_page).permit(:hero, :about, :hero_image, :adoptable_pet_info, about_us_images: [])
  end

  def set_custome_page
    @custome_page = CustomPage.first
    authorize! @custome_page
  end
end
