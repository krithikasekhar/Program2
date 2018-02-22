class Company < ApplicationRecord
   has_many :jobs
   has_many :users
   has_many :applications

   validates :company_id, :name, presence: true
end
