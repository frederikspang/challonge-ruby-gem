module Challonge
  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Configuration.new
    yield(configuration)
    self.configuration.post_configure
  end


  class Configuration
    attr_accessor :mailer_sender, :api_user, :api_key

    def initialize
      @mailer_sender = 'donotreply@example.com'
    end

    def post_configure
      Challonge::API.user = Challonge.configuration.api_user
      Challonge::API.password = Challonge.configuration.api_key
    end
  end
end
