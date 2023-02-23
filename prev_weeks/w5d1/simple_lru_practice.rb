class LRUCache
    def initialize(max)
        @cache = []
        @max = max
    end

    def count
        @cache.length
      # returns number of elements currently in cache
    end

    def add(el)
        if !@cache.include?(el)
            if @cache.length == @max
                @cache.shift
                @cache << el
            else
                @cache << el
            end
        else
            @cache.each_index do |i|
                if @cache[i] == ele
                    @cache.delete_at(i)
                    break
                end
            end
            @cache << ele
        end
      # adds element to cache according to LRU principle
    end

    def show
        @cache.reverse
      # shows the items in the cache, with the LRU item first
    end

    private
    # helper methods go here!

  end