class ApplicationController < ActionController::Base
   before_action :redirect_to_custom_domain

   private
   def redirect_to_custom_domain
    if request.host == 'https://ikimoji.herokuapp.com/'
      redirect_to action: 'https://www.ikimoji.com', status: :moved_permanently
      # before
      # redirect_to "https://www.ikimoji.com"+request.path, :status => 301
    end
   end
end
