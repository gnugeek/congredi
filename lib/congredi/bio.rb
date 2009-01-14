module Congredi
  
  class Bio
    attr_reader :member_id, :name, :date_of_birth, :gender, :url, :govtrack_id, :roles
  
    def initialize(url_or_params)
      
      if url_or_params.class == Hash
        @url = "http://api.nytimes.com/svc/politics/v2/us/legislative/congress/members/#{url_or_params[:member_id]}?api-key=#{APIKEY}"
      elsif url_or_params.class == String
        @url = url_or_params
      end
      
      @roles          = []
      @doc            = Nokogiri.parse(open(@url))
      @name           = @doc.search('//member/name').first.inner_html
      @date_of_birth  = @doc.search('//member/date_of_birth').first.inner_html
      @gender         = @doc.search('//member/gender').first.inner_html
      @url            = @doc.search('//member/url').first.inner_html
      @govtrack_id    = @doc.search('//member/govtrack_id').first.inner_html
    
      @doc.search('member/roles/role').each do |element|
        @roles.push(Congredi::Role.new(element))
      end
      
    end
  
  end 
end