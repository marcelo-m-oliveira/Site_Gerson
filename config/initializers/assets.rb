# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )


# app/assets/css end js
Rails.application.config.assets.precompile += %w( site.css site_noscript.css site.js )

# lib/assets/css
Rails.application.config.assets.precompile += %w( bg.jpg overlay.png 
                                                  pic01.jpg pic02.jpg pic03.jpg pic04.jpg 
                                                  pic05.jpg pic06.jpg pic07.jpg pic08.jpg 
                                                  pic09.jpg )

# app/assets/js
Rails.application.config.assets.precompile += %w( fontawesome.min.js breakpoints.min.js 
                                                  browser.min.js jquery.min.js 
                                                  jquery.scrollex.min.js jquery.scrolly.min.js 
                                                  main.js util.js )