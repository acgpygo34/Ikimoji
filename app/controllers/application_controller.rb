class ApplicationController < ActionController::Base
  before_action :redirect_to_custom_domain

  private
  def redirect_to_custom_domain
    if request.host == "ikimoji.herokuapp.com"
      redirect_to "www.ikimoji.com", :status => 301
      # before
      # redirect_to "www.ikimoji.com"+request.path, :status => 301
    end
  end
end
