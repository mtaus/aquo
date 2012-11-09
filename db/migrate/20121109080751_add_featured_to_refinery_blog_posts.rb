class AddFeaturedToRefineryBlogPosts < ActiveRecord::Migration
  def change
    add_column :refinery_blog_posts, :featured, :boolean
  end
end
