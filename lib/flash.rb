require 'json'

class Flash

  def initialize(req)
    cookie = req.cookies["_rails_lite_app"]
    if cookie
      @hash = JSON.parse(cookie)
    else
      @hash = {}
    end

  end

  def store_flash
    
  end

  def [](key)
    @hash[key]
  end

  def []=(key, val)
    @hash[key] = val
  end

  def now
  end


end
