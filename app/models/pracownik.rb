class Pracownik < ActiveRecord::Base
has_many :prac2oddzials
has_many :prac2specjalizacjas
has_many :wizytums
has_many :terminarzs

has_secure_password
validates :imie, presence: true
validates :nazwisko, presence: true
validates :pesel, presence: true, uniqueness: true, length: { in: 3..50 }


end
