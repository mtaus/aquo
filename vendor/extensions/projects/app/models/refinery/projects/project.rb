module Refinery
  module Projects
    class Project < Refinery::Core::BaseModel
      self.table_name = 'refinery_projects'

      attr_accessible :name, :overview, :description, :logo_id, :tag, :position, :featured

      acts_as_indexed :fields => [:name, :overview, :description, :tag, :featured]

      validates :name, :presence => true, :uniqueness => true

      belongs_to :logo, :class_name => '::Refinery::Image'

      scope :featured, where(:featured => true)
    end
  end
end
