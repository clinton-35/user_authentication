class PagesController < ApplicationController
    def home
        render json: {status:"its working"}
    end
end