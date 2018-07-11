require "agents/version"
require "agents/constants"

module Agents
  
  class << self
    def random_user_agent(*args)
      args    =   (args.nil? || args.empty?) ? [:desktop] : args
      ::Agents::Constants::USER_AGENTS.dig(*args&.collect(&:to_sym))&.sample
    end
    
    def runs_ios?(user_agent)
      is_iphone?(user_agent) || is_ipad?(user_agent)
    end
  
    def is_iphone?(user_agent)
      !(user_agent =~ /iphone|cpu\siphone/i).nil?
    end
  
    def is_ipad?(user_agent)
      !(user_agent =~ /ipad/i).nil?
    end
  end
  
end
