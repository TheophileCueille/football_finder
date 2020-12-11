module FootballData
    class Home < Base
        def index
            response = self.class.get("/competitions/2015/matches?matchday=#{params[:id]}", @options)
        end
    end

end
