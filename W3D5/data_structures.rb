class Stack
    def initialize
      @stack_elements = []
    end

    def push(el)
        @stack_elements.push(el)
    end

    def pop
      @stack_elements.pop
    end

    def peek
      @stack_elements[-1]
    end
  end

  class Queue
    def initialize
      @stack_elements = []
    end

    def enqueue(el)
        @stack_elements.push(el)
    end

    def dequeue
      @stack_elements.shift
    end

    def peek
      @stack_elements[0]
    end
  end

  class Map

    def initialize
        @elements = []
    end

    def set(key, value)
        already_in = false
        @elements.each do |pair|
            if pair[0] == key
                pair[1] = value
                already_in = true
                break
            end
        end
        @elements << [key, value] if !already_in
        true
    end

    def get(key)
        @elements.each do |pair|
            if pair[0] == key
                return pair[1]
            end
        end
        return nil
    end

    def delete(key)
        @elements.each_with_index do |pair, i|
            if pair[0] == key
                @elements.delete_at(i)
                break
            end
        end
    end

    def show
        @elements
    end
  end