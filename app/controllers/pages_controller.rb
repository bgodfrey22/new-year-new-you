class PagesController < ApplicationController
    def show
        render template: "pages/#{params[:page]}"
    end

    def show_user
        @user = User.find(params[:id])
    end
end
