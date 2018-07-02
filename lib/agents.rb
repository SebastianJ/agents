require "agents/version"
require "agents/constants"

module Agents
  
  def self.random_user_agent(*args)
    args    =   (args.nil? || args.empty?) ? [:desktop] : args
    ::Agents::Constants::USER_AGENTS.dig(*args&.collect(&:to_sym))&.sample
  end
  
end
