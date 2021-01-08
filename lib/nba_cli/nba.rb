

class NBA
    @@all = []
    attr_accessor :full_name, :abbreviation, :city, :division

    def initialize(teams_hash)
        teams_hash.each do |k, v|
            self.send("#{k}=", v) if self.respond_to?("#{k}=")
        end
        save
    end

end