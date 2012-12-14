class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :find_featured_projects, :find_featured_blog_posts, :only => [:home]
  before_filter :new_inquiry

  protected

  def find_featured_projects
    @projects = Refinery::Projects::Project.featured.order('position ASC')
  end

  def find_featured_blog_posts
    @posts = Refinery::Blog::Post.featured
  end
  
  def new_inquiry
    @inquiry = Refinery::Inquiries::Inquiry.new
  end
end
