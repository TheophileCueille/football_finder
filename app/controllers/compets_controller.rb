class CompetsController < ApplicationController


    include HTTParty
    base_uri "https://api.football-data.org/v2"
    

    def match
        @options = { headers: { "X-Auth-Token" => "acc141a28a57413888dd75eab9a28c57" } }
        @matchs = self.class.get("/competitions/2015/matches?matchday=#{params[:id]}", @options)
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
        @teams_show = self.class.get("/teams/#{params[:id]}", @options)

        @new_address = Compet.create address: @teams_show["venue"] #faire aussi pour team id 
    end
end

 
