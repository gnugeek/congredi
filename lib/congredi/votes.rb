module Congredi

  class Vote
    attr_reader :date, :time, :position, :chamber, :congress, :session, :roll_call

    def initialize(element)  
      @date       = element.search('date').inner_html
      @time       = element.search('time').inner_html
      @position   = element.search('position').inner_html
      @chamber    = element.search('chamber').inner_html
      @congress   = element.search('congress').inner_html
      @session    = element.search('session').inner_html
      @roll_call  = element.search('roll_call').inner_html
    end
  end
   
  class Votes
    attr_reader :votes
    
    def initialize(url_or_params)
      if url_or_params.class == String
        @url = url_or_params
      elsif url_or_params.class == Hash
        @url = "http://api.nytimes.com/svc/politics/v2/us/legislative/congress/members/#{url_or_params[:member_id]}/votes?api-key=#{APIKEY}" 
      end
      
      @votes = []
      @doc = Nokogiri.parse(open(@url))
      @doc.search('vote').each do |element|
        @votes.push(Congredi::Vote.new(element))
      end
    
    end
  end
  
end