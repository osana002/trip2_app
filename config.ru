# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
config.fog_provider = 'fog/aws'

run Rails.application
