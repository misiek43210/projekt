class StaticController < ApplicationController

def index
@some_variable = 123
@pracowniks=Pracownik.all

end
end
