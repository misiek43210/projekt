class Pracownik < ActiveRecord::Base
has_many :prac2oddzials
has_many :prac2specjalizacjas
has_many :wizytums
has_many :terminarzs
end
