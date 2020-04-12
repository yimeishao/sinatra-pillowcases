class User < ActiveRecord::Base 
    has_many :entries 

    validates :name, presence: true, uniquness: true 
    validates :email, presence: true, uniquness: true 
    #validates macro comes from activerecord

    has_secure_password 
end 