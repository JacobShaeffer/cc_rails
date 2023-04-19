class ApplicationController < ActionController::Base
    include Pundit::Authorization
    def current_controller?(names)
        names.include?(params[:controller])
    end
    helper_method :current_controller?
end