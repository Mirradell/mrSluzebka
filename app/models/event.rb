class Event < ApplicationRecord
  has_and_belongs_to_many :people
  validates :title, presence: {message: "%{value}Введите, пожалуйста, название мероприятия!"}
  
end

#TODO написать ограничения для мест!!! http://rusrails.ru/active-record-validations
