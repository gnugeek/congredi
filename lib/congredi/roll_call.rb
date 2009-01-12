module Congredi
  
  class RollCall
    attr_reader :d_majority_position, :d_no, :d_yes, :d_present, :d_not_voting, 
                :r_majority_position, :r_no, :r_yes, :r_present, :r_not_voting, :i_no,
                :i_yes, :i_present, :i_not_voting,
                :result, :time, :roll_call, :congress, :date, :bill_number,
                :description, :question

    def initialize(url_or_params)
      
      if url_or_params.class == String
        @url = url_or_params
      elsif url_or_params.class == Hash
        @url = "http://api.nytimes.com/svc/politics/v2/us/legislative/congress/#{url_or_params[:congress]}/#{url_or_params[:chamber]}/sessions/#{url_or_params[:session]}/votes/#{url_or_params[:roll_call]}?api-key=#{APIKEY}"
      end

      @doc = Hpricot.parse(open(@url))
      
      @d_majority_position  = @doc.search('democratic/majority_position').inner_html
      @d_no                 = @doc.search('democratic/no').inner_html
      @d_yes                = @doc.search('democratic/yes').inner_html
      @d_present            = @doc.search('democratic/present').inner_html
      @d_not_voting         = @doc.search('democratic/not_voting').inner_html
      @r_majority_position  = @doc.search('republican/majority_position').inner_html
      @r_no                 = @doc.search('republican/no').inner_html
      @r_yes                = @doc.search('republican/yes').inner_html
      @r_present            = @doc.search('republican/present').inner_html
      @r_not_voting         = @doc.search('republican/not_voting').inner_html
      @i_no                 = @doc.search('independent/no').inner_html
      @i_yes                = @doc.search('independent/yes').inner_html
      @i_present            = @doc.search('independent/present').inner_html
      @i_not_voting         = @doc.search('independent/not_voting').inner_html
      @result               = @doc.search('result').inner_html
      @time                 = @doc.search('time').inner_html
      @roll_call            = @doc.search('roll_call').inner_html
      @congress             = @doc.search('congress').inner_html
      @date                 = @doc.search('date').inner_html
      @bill_number          = @doc.search('bill_number').inner_html
      @description          = @doc.search('description').inner_html
      @question             = @doc.search('question').inner_html
      
    end    
  end
  
end