module PostsHelper

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

end
