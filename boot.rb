# encoding: utf-8

require 'track'
# require 'track/active_record'
# require 'track/sequel'

require_relative 'app/controllers/application_controller'

Track.boot! File.expand_path('..', __FILE__)

