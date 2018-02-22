class User < ApplicationRecord
   has_many :applications

   validates :email_id, :Name, :password ,presence: true
end
