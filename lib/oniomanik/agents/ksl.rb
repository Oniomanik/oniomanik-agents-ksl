require "oniomanik/agents/ksl/version"
require "oniomanik/agents/ksl/client"


module Oniomanik::Agents::Ksl

  def self.client
    @client ||= Client.new
  end

  def self.search(query)
    client.search query
  end
end
