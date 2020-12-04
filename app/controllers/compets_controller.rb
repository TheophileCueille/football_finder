class CompetsController < ApplicationController
    include HTTParty
    base_uri "https://api.football-data.org/v2"
    

    def match
        @matchs = FootballData::Competition.new.match
        @teams = FootballData::Competition.new.team
    end
    
    def teams
        @teams = FootballData::Competition.new.team
    end

    def standing

        @standing = FootballData::Competition.new.standing
    end

    def show
        @options = { headers: { "X-Auth-Token" => "acc141a28a57413888dd75eab9a28c57" } }
        @teams = self.class.get("/teams/#{params[:id]}", @options)

    end
end
