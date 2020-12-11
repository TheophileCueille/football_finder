class CompetsController < ApplicationController


    include HTTParty
    base_uri "https://api.football-data.org/v2"
    

    def match
        @options = { headers: { "X-Auth-Token" => "acc141a28a57413888dd75eab9a28c57" } }
        match_API = self.class.get("/competitions/2015/matches?matchday=#{params[:id]}", @options)
        @matchs = match_API
        @teams = FootballData::Competition.new.team
    end
    
    def teams
        @teams = FootballData::Competition.new.team
    end

    def standing
        standing_API = FootballData::Competition.new.standing
        @standing =standing_API
    end
    def show
        @options = { headers: { "X-Auth-Token" => "acc141a28a57413888dd75eab9a28c57" } }
        @teams_show = self.class.get("/teams/#{params[:id]}", @options)
        @new_address = Compet.create address: @teams_show["venue"]
        
    end
end

 
