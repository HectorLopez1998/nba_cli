

class API

    def self.get_data
        response = RestClient.get('https://www.balldontlie.io/api/v1/teams')
        teams_array = JSON.parse(response)["data"]
    end

end