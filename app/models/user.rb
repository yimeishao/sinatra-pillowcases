class User < ActiveRecord::Base 
    has_many :entries 

    validates :name, presence: true, uniqueness: true 
    validates :email, presence: true, uniqueness: true 
    #validates macro comes from activerecord
    #can now use "valid?" instance method
    #wont create new user if the params dont meet these requirements
    has_secure_password 
end 