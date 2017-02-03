class LRUCache
  def initialize(size)
    @size = size
    @cache = []
    @next_index = 0
  end

  def count
    # returns number of elements currently in cache
    @next_index
  end

  def add(el)
    p @cache
    # adds element to cache according to LRU principle
    if @cache.include?(el)
      remove(el)
      @cache.push(el)
      return
    end
    if @next_index == @size
      @cache.shift
      @cache.push(el)
      return
    end
    @cache.push(el)
    @next_index += 1
    # remove(el) if @cache.include?(el)
    # @cache.push(el)
    # @cache.pop if @cache.last_index == size - 1
  end

  def show
    # shows the items in the cache, with the LRU item first
    p @cache
  end

  private
  # helper methods go here!
  def remove(el)
    @cache = @cache.reject { |item| item == el }
  end

end

johnny_cache = LRUCache.new(4)

johnny_cache.add("I walk the line")
johnny_cache.add(5)

johnny_cache.count # => returns 2

johnny_cache.add([1,2,3])
johnny_cache.add(5)
johnny_cache.add(-5)
johnny_cache.add({a: 1, b: 2, c: 3})
johnny_cache.add([1,2,3,4])
johnny_cache.add("I walk the line")
johnny_cache.add(:ring_of_fire)
johnny_cache.add("I walk the line")
johnny_cache.add({a: 1, b: 2, c: 3})


johnny_cache.show # => prints [[1, 2, 3, 4], :ring_of_fire, "I walk the line", {:a=>1, :b=>2, :c=>3}]
