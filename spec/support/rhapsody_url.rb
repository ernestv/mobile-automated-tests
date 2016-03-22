class RhapsodyUrl
  def self.get(region, path = "")
    URI.join(RSpec.configuration.web_root[region], path).to_s
  end
end
