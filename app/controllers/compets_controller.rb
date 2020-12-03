class CompetsController < ApplicationController

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
end
