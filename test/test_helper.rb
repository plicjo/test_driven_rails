require 'minitest/autorun'
require 'minitest/spec'
require 'mocha/setup'

require_relative '../config/environment'

def random_string
  SecureRandom.uuid
end
