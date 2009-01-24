class MobileUserAgent
  # TODO: Add more
  #   http://zytrax.com/tech/web/mobile_ids.html
  MobileAgents = { 
    :iphone => /iPhone/i,
    :blackberry => /blackberry/i
  }
  
  def self.detect(request)
    user_agent = request.user_agent.downcase
    MobileAgents.each do |name, re|
      return name if user_agent.match(re)
    end

    return false
  end
  
  def self.css(agent)
    case agent
    when :blackberry
      return 'blackberry'
    when :iphone
      return 'iphone'
    else
      return ''
    end
  end
end
