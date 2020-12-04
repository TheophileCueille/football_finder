module FootballData
  class Competition < Base
    

    def match
      response = self.class.get('/competitions/2015/matches/', @options)
     #response['competitions']
    end

    def team
        response = self.class.get('/competitions/2015/teams/', @options)
      response['teams']
    end
    
    def standing
      response = self.class.get('/competitions/2015/standings', @options)
      response['standings']

    end


  def show
    response = self.class.get("/teams/#{@id}", @options)
  puts "*" *30
    @id
  puts "*" *30



  end


  end
end

#FootballData::Competition.new.match
#FootballData::Competition.new.team
#FootballData::Competition.new.standing
#FootballData::Competition.new.show