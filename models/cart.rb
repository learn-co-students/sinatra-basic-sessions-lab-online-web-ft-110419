class Cart

    attr_reader :item
    @@all = []

    def initialize(params)
        @item = params[:item]
        @@all << self
    end

    def self.all
        @@all
    end

end