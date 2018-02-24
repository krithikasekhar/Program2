class Application < ApplicationRecord
 belongs_to :company
 belongs_to :job
 belongs_to :user

 validates :application_id, :user_id, presence: true
end
