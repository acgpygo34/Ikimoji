class ApplicationController < ActionController::Base
   before_action :redirect_to_custom_domain

   private
   def redirect_to_custom_domain
    if request.host == "ikimoji.herokuapp.com"
      #redirect_to action: 'https://www.ikimoji.com', status: :moved_permanently
      # before
      redirect_to '/'
    end
   end
end
