module FootballData
    class Base
      include HTTParty
      base_uri "https://api.football-data.org/v2"
  
      def initialize
        @options = { headers: { "X-Auth-Token" => "acc141a28a57413888dd75eab9a28c57" } }
      end
    end
  end