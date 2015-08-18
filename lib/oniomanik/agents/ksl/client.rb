require "httparty"

class Oniomanik::Agents::Ksl::Client

  include HTTParty
  base_uri 'http://www.ksl.com'

  def search(query)
    # http://www.ksl.com/classifieds/api.php?cmd=list&s=Xeon+X3&srt=Most+recent
    options = {
      query: {
        cmd: 'list',
        s: query,
        srt: 'Most recent'
      },

      format: :json
    }

    self.class.get("/classifieds/api.php", options)
  end
end
