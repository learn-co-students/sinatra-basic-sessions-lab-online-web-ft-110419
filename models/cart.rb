class Cart 
attr_accessor :item, :tracking, :csrf, :session_id
    @@all = []
    def initialize(args)
        @csrf = args[:csrf]
        @session_id = args[:session_id]
        @item = args[:item]
        @tracking = args[:tracking]
        @@all << self 
    end 
    def self.all
        @@all

    end 
end 