class HomeController < ApplicationController
  before_action :authenticate_user!, only:[:secret]

  include HTTParty
  base_uri "https://api.football-data.org/v2"

  def index
    if  params[:id] == nil; params[:id] = 13 end 
    puts "$"*30
    puts params[:id]
    puts "$"*30
    @stades = [];
    @cordinates_stades = [];
    #@teams = FootballData::Home.new.index
    @options = { headers: { "X-Auth-Token" => "acc141a28a57413888dd75eab9a28c57" } }
      @matchs = self.class.get("/competitions/2015/matches?matchday=#{params[:id]}", @options)
    @teams = FootballData::Competition.new.team
    @teams_stades = {"Montpellier HSC": "Stade de la Mosson", "Olympique de Marseille": "Orange Vélodrome", "Stade Brestois 29": "Stade Francis-Le Blé", "Lille OSC": "Stade Pierre-Mauroy"	, "OGC Nice": "Stade de Nice", "Olympique Lyonnais": "Groupama Stadium","Paris Saint-Germain FC": "Parc des Princes", "FC Lorient": "Stade Yves Allainmat - Le Moustoir","FC Girondins de Bordeaux": "Stade Matmut-Atlantique", "AS Saint-Étienne": "Stade Geoffroy-Guichard", "Dijon Football Côte d'Or": "Stade Gaston Gérard","Dijon Football Côte d'Or": "Stade Gaston Gérard", "Stade Rennais FC 1901": "Roazhon Park", "Angers SCO": "Stade Raymond Kopa","FC Nantes": "Stade de la Beaujoire - Louis Fonteneau", "FC Metz": "Stade Saint-Symphorien", "Racing Club de Lens": "Stade Bollaert-Delelis","Stade de Reims": "Stade Auguste-Delaune II", "AS Monaco FC": "Stade Louis II.", "Nîmes Olympique": "Stade des Costières", "RC Strasbourg Alsace": "Stade de la Meinau" }

  end

  def secret
  
  end

end

