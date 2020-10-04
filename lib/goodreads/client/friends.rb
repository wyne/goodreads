module Goodreads
  module Friends
    # Get the specified user's friends
    #
    # user_id - integer or string
    #
    def friends(user_id, options={})
      data = oauth_request("/friend/user/#{user_id}", options)
      Hashie::Mash.new(data["friends"])
    end

    def compare(user_id, options={})
      data = oauth_request("/user/compare#{user_id}", options)
      Hashie::Mash.new(data["compare"])
    end
  end
end
