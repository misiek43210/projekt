module SessionsHelper

def log_in(pracownik)
	session[:pracownik_id] = pracownik.id
end

end
