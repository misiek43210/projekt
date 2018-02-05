class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
	include SessionsHelper

def create
pracownik = Pracownik.find_by(pesel: params[:index])
if pracownik && pracownik.authenticate(params[:password])
# Wszystko dobrze, logujemy
log_in pracownik
redirect_to pracownik
else
# Niedobrze
render 'new'
end
end
end

