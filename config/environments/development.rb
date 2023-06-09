require 'active_support/core_ext/integer/time'

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded any time
  # it changes. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports.
  config.consider_all_requests_local = true

  # Enable server timing
  config.server_timing = true

  # Enable/disable caching. By default caching is disabled.
  # Run rails dev:cache to toggle caching.
  if Rails.root.join('tmp/caching-dev.txt').exist?
    config.action_controller.perform_caching = true
    config.action_controller.enable_fragment_cache_logging = true

    config.cache_store = :memory_store
    config.public_file_server.headers = {
      'Cache-Control' => "public, max-age=#{2.days.to_i}"
    }
  else
    config.action_controller.perform_caching = false

    config.cache_store = :null_store
  end

  # Store uploaded files on the local file system (see config/storage.yml for options).
  config.active_storage.service = :local

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  config.action_mailer.perform_caching = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Raise exceptions for disallowed deprecations.
  config.active_support.disallowed_deprecation = :raise

  # Tell Active Support which deprecation messages to disallow.
  config.active_support.disallowed_deprecation_warnings = []

  # Raise an error on page load if there are pending migrations.
  config.active_record.migration_error = :page_load

  # Highlight code that triggered database queries in logs.
  config.active_record.verbose_query_logs = true

  # Suppress logger output for asset requests.
  config.assets.quiet = true

  # Raises error for missing translations.
  # config.i18n.raise_on_missing_translations = true

  # Annotate rendered view with file names.
  # config.action_view.annotate_rendered_view_with_filenames = true

  # Uncomment if you wish to allow Action Cable access from any origin.
  # config.action_cable.disable_request_forgery_protection = true
  config.hosts << 'localhost'
  config.hosts << '0.0.0.0/0'
  config.hosts << '::/0'
  config.hosts << /.*\.ngrok\.io/
  config.hosts << /[a-z0-9-]+\.ngrok-free\.app/
  config.action_mailer.default_url_options = { host: 'localhost', only_path: false }
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.delivery_method = :letter_opener_web
  config.action_mailer.perform_deliveries = true
  config.web_console.whitelisted_ips = [
    '2804:4308:546:0:c5c7:2034:6273:d081',
    '45.70.35.252',
    '45.70.34.70',
    '2804:4308:546:0:c8ad:6372:d46d:c954',
    '177.136.194.28',
    '2804:4308:546:0:343b:bd6:29:6f39',
    '2804:4308:546:0:2ce6:f687:928c:980f',
    '2804:4308:546:0:b413:6d09:6220:826b',
    '2804:4308:546:0:316f:b78f:8ae8:e53e'
  ]
  config.default_url_options = { host: ENV.fetch('API_BASE_URL', nil) }
end
