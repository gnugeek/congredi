module Congredi

  class Member
    attr_reader :member_id, :name, :party, :state

    def initialize(element)  
      @member_id  = element.search('id').inner_html
      @name       = element.search('name').inner_html
      @party      = element.search('party').inner_html
      @state      = element.search('state').inner_html
    end
  
    def bio
      @bio ||= Congredi::Bio.new({:member_id => @member_id})
    end
  end
  
end