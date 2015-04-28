require 'insightly2/version'

module Insightly2
  autoload :Client, 'insightly2/client'
  autoload :DSL, 'insightly2/dsl'
  autoload :Resources, 'insightly2/resources'
  autoload :Errors, 'insightly2/errors'
  autoload :Utils, 'insightly2/utils'

  class << self
    # @return [String]
    attr_accessor :api_key
    attr_accessor :logger
    attr_accessor :stub
  end

  module_function

  # @return [Insightly2::Client]
  def client
    @client ||= Client.new(Insightly2.api_key)
  end
end
