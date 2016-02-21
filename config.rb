activate :autoprefixer

set :relative_links, true
set :css_dir, "stylesheets"
set :js_dir, "javascripts"
set :images_dir, "images"
set :partials_dir, "partials"

configure :development do
  activate :livereload
end

configure :build do
  activate :asset_hash
  activate :relative_assets
  activate :minify_css
  activate :minify_javascript
end

activate :deploy do |deploy|
  deploy.build_before = true
  deploy.deploy_method = :git
end