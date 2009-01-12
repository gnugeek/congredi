module Congredi
  
  class Role
    attr_reader :congress, :chamber, :title, :state, :party, :start_date, :end_date
 
    def initialize(element)
      @congress   = element.search('congress').inner_html
      @chamber    = element.search('chamber').inner_html
      @title      = element.search('title').inner_html
      @state      = element.search('state').inner_html
      @party      = element.search('party').inner_html
      @start_date = element.search('start_date').inner_html
      @end_date   = element.search('end_date').inner_html
   end
 end
 
end