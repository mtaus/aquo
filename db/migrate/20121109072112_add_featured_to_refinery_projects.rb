class AddFeaturedToRefineryProjects < ActiveRecord::Migration
  def change
    add_column :refinery_projects, :featured, :boolean
  end
end
