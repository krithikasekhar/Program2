class Job < ApplicationRecord
 belongs_to :company
 has_many :applications

 validates :job_id, :company_id, presence: true
end
