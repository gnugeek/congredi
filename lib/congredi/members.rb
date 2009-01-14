module Congredi

  class Members  
    attr_reader :members
    
    def initialize(url_or_params)
      if url_or_params.class == String
        @url = url_or_params
      elsif url_or_params.class == Hash
        @url = "http://api.nytimes.com/svc/politics/v2/us/legislative/congress/#{url_or_params[:congress]}/#{url_or_params[:chamber]}/members?api-key=#{APIKEY}" 
      end
      
      @members  = []
      @doc      = Nokogiri.parse(open(@url))
      @doc.search('member').each do |element|
        @members.push(Congredi::Member.new(element))
      end
    end
  end
    
end
