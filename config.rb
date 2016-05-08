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
  gh_pages.remote = 'git@github.com:euruko/euruko2016.github.io.git'
end
