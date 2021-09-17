class PokeAPI::Cache
  # Creates a new Cache.
  def initialize(@time_cached : Time::Span = 30.minutes)
    @cache_enabled = true
    @cache = Hash(String, NamedTuple(data: String, cachedTime: Time)).new
  end

  # Sets the time that data is cached to *cache_time*.
  def set_cache_time(cache_time : Time::Span)
    @time_cached = cache_time
  end

  # Returns `true` if the cache is enabled, otherwise `false`.
  def is_enabled? : Bool
    return @cache_enabled
  end

  # Enables the cache.
  def enable
    @cache_enabled = true
  end

  # Disables the cache.
  #
  # NOTE: This does not clear the cache.
  def disable
    @cache_enabled = false
  end

  # Clears the cache.
  # `true` is returned if the cache was cleared successfully, otherwise `false`.
  def clear : Bool
    @cache.clear

    return @cache.empty?
  end

  # Returns `true` when the cache is empty.
  def empty? : Bool
    return @cache.empty?
  end

  # Checks if cache contains *key*. 
  # Returns `true` is key is in cache and the value has not been
  # cached for more than *time_cached*.
  # `false` is returned if key doesn't exist in the cache or if
  # the cached data is out-dated.
  # Out-dated data gets deleted before `false` is returned.
  def has_key?(key : String) : Bool
    if @cache.has_key?(key)
      if @cache[key][:cachedTime] + @time_cached < Time.utc
        @cache.delete(key)
        return false
      end

      return true
    end

    return false
  end

  # Adds data to the cache.
  def add(key : String, data : String)
    @cache[key] = {data: data, cachedTime: Time.utc}
  end

  # Retrieves data from the cache.
  def get(key : String) : NamedTuple(data: String, cachedTime: Time)
    return @cache[key]
  end
end