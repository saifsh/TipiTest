class User < ApplicationRecord
    has_many :projects, :dependent => :delete_all
  accepts_nested_attributes_for :projects, allow_destroy: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
