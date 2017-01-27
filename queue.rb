# Now let's write a Queue class. We will need the following instance methods: enqueue(el), dequeue, and show.
#
# Test your code to ensure it follows the principle of FIFO.

class Queue

  def initialize
    @queue = []

  def enqueue(el)
    @queue.push(el)
  end

  def dequeue
    @queue.shift
  end

  def show
    @queue
  end

end
