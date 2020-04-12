class User < ActiveRecord::Base 
    has_many :entries 

    validates :name, presence: true, uniquness: true 
    validates :email, presence: true, uniquness: true 
    #validates macro comes from activerecord
    #can now use "valid?" instance method
    #wont create new user if the params dont meet these requirements
    has_secure_password 
end 