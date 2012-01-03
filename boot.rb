# encoding: utf-8

require 'track'
# require 'track/active_record'
# require 'track/sequel'

# require all controllers before Track.boot! otherwise the router will complain
require_relative 'app/controllers/application_controller'

# Track.plugin Track::ActiveRecord
# Track.plugin Track::Sequel
Track.boot! File.expand_path('..', __FILE__)

