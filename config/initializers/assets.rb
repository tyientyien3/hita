# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = "1.0"

# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join("node_modules")

# selectbox 連動
Rails.application.config.assets.precompile += %w( selectbox.js )
#質問の枠　css
Rails.application.config.assets.precompile += %w( question_boxes.scss )
#question/show の css
Rails.application.config.assets.precompile += %w( questions.scss )
#home画面の　css
Rails.application.config.assets.precompile += %w( homes.scss )
#user画面の　css
Rails.application.config.assets.precompile += %w( users.scss )
#devise使用画面の　css
Rails.application.config.assets.precompile += %w( devises.scss )
# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
