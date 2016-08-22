activate :autoprefixer

set :relative_links, true
set :css_dir, "stylesheets"
set :js_dir, "javascripts"
set :images_dir, "images"
set :partials_dir, "partials"

configure :development do
  activate :livereload
  activate :directory_indexes
end

configure :build do
  activate :asset_hash
  activate :relative_assets
  activate :minify_css
  activate :minify_javascript
end

activate :gh_pages do |gh_pages|
  gh_pages.remote = 'https://github.com/euruko/euruko2016.github.io'
end

activate :blog do |blog|
  blog.prefix = "blog"
  blog.layout = "blog_layout"
end

helpers do
  def avatar(speaker, w: nil, h: nil)
    image = image_tag(speaker.image, width: w, height: h)
    link_to image, "/speakers##{speaker.handle}", class: 'avatar'
  end

  def speakers(handle)
    data.speakers.find { |s| s.handle == handle.to_s } or raise KeyError, handle
  end
end
