module DailiesHelper

  def region_pairs
  	@regions.map do |region|
  		[region.name.to_s, region.id.to_i]
    end
  end

  def city_pairs
  	@cities.map do |city|
   		[city.name.to_s, city.id.to_i]
    end
  end

  def attraction_pairs
  	@attractions.map do |attraction|
   		[attraction.name.to_s, attraction.id.to_i]
    end
  end

  def post_pairs
    @posts.map do |post|
      [post.title.to_s, post.id.to_i]
    end
  end


  def region_select (rid)
  	@regions.map do |region|
  		if region.id == rid
  			return region.name.to_s
  		end
    end
  end
    
  def city_select (cid)
  	@cities.map do |city|
  		if city.id == cid
  			return city.name.to_s
  		end
    end
  end 

  def attraction_select (aid)
  	@attractions.map do |attraction|
  		if attraction.id == aid
  			return attraction.name.to_s
  		end
    end
  end

  def post_select (pid)
    @posts.map do |post|
      if post.id == pid
        return post.title.to_s
      end
    end
  end

  def region_link_select (rid)
    @regions.map do |region|
      if region.id == rid
        return region_path(region)
      end
    end
  end

  def city_link_select (cid)
    @cities.map do |city|
      if city.id == cid
        return city_path(city)
      end
    end
  end

  def attraction_link_select (aid)
    @attractions.map do |attraction|
      if attraction.id == aid
        return attraction_path(attraction)
      end
    end
  end

  def post_link_select (pid)
    @posts.map do |post|
      if post.id == pid
        return post_path(post)
      end
    end
  end

end
