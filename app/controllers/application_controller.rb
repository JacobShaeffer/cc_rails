class ApplicationController < ActionController::Base
    def current_controller?(names)
        names.include?(params[:controller])
    end
    helper_method :current_controller?
end