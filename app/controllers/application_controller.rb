class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :find_featured_projects, :only => [:home]

  protected

  def find_featured_projects
    @projects = Refinery::Projects::Project.featured.order('position ASC')
  end
end
