class Recipee < ApplicationRecord
  
        include HTTParty
        #require 'httparty'
        ENV["FOOD2FORK_KEY"] = '06a2421dd9d9f44234c6bd7bc85e5707'
        base_uri 'http://food2fork.com/api'
        default_params key: ENV["FOOD2FORK_KEY"]
        format :json
        
        def self.for term
        get("/search", query: { q: term})["recipes"]
        end
    
end
