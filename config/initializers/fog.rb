CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'xxx',                        # required
    :aws_secret_access_key  => 'yyy',                        # required
  }
  config.fog_directory  = 'uploads'                     # required
  config.fog_public     = false                                   # optional, defaults to true
end