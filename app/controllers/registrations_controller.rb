class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end
    def create
        render plain: "merci!"
        redirect_to(:controller => 'pages', :action => 'home')
    end
end