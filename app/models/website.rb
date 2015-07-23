class Website < ActiveRecord::Base
	has_many :links, dependent: :destroy
	validates :site_url, presence: true
end
