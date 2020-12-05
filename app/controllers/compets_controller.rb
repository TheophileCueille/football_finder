
class CompetsController < ApplicationController



    include HTTParty
    base_uri "https://api.football-data.org/v2"
    

    def match
        @matchs = FootballData::Competition.new.match
        @teams = FootballData::Competition.new.team
        @elo =20
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
        @new_address = Compet.create address: @teams_show["address"] #faire aussi pour team id 
        puts "*"*50
        puts  @new_address.id
        puts  @new_address.longitude
        puts  @new_address.latitude
        puts  @new_address.address
        puts "*"*50
    end
end
