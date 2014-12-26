class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

 	validates_length_of :name, :minimum => 1, :maximum => 255, :allow_blank => false

  has_many :pics
end
