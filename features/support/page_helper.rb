module Pages

    def commun
        @@commun||= Commun.new
    end

    def home
        @home||= Home.new
    end
end