Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  config.relative_url_root = '/'

  # Code is not reloaded between requests.
  config.cache_classes = true

  config.eager_load = true

  # Full error reports are disabled and caching is turned on.
  config.consider_all_requests_local       = false
  config.action_controller.perform_caching = true

  config.serve_static_files = true

  # Compress JavaScripts and CSS.
  config.assets.js_compressor = :uglifier
  # config.assets.css_compressor = :sass

  # Do not fallback to assets pipeline if a precompiled asset is missed.
  config.assets.compile = false

  # Asset digests allow you to set far-future HTTP expiration dates on all assets,
  # yet still be able to expire them through the digest params.
  config.assets.digest = true

  config.log_level = :debug

  config.i18n.fallbacks = true

  # Send deprecation notices to registered listeners.
  config.active_support.deprecation = :notify

  # Use default logging formatter so that PID and timestamp are not suppressed.
  config.log_formatter = ::Logger::Formatter.new

  # Do not dump schema after migrations.
  config.active_record.dump_schema_after_migration = false

  #config.action_mailer.default_url_options = { host: '0.0.0.0:3000' }
  #config.action_mailer.delivery_method = :letter_opener
end

Rails.application.config.middleware.use ExceptionNotification::Rack,
  :email => {
    :email_prefix => "[EXPOTEC] ",
    :sender_address => %{"VI EXPOTEC" <expotec.ca@ifrn.edu.br>},
    :exception_recipients => %w{max.silveira@ifrn.edu.br}
  }
