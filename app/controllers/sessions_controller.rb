class SessionsController < ApplicationController
  def new
  end

def create 

pracownik = Pracownik.find_by(pesel: params[:pesel])
if pracownik && pracownik.authenticate(params[:password])
# Wszystko dobrze, logujemy
else
# Niedobrze
render 'new'

end
end
end
