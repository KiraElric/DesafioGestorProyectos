class Project < ApplicationRecord
  validates :name_project, presence: true
  validates :description, presence: true
  validates :state, presence: true
end
