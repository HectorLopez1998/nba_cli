

class API

    def self.get_data
        response = RestClient.get('https://www.balldontlie.io/api/v1/teams')
        teams_array = JSON.parse(response)["data"]
        teams_array.each do |team|
            NBA.new(team)
        end
    end

end