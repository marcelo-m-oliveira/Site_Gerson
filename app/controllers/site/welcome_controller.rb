class Site::WelcomeController < SiteController
  before_action :set_service_options, only: [:index]

  
  def index
    @services = Service.all
  end

  private
  def set_service_options
    @service_options = Service.all.pluck(:description, :id)
  end

end
