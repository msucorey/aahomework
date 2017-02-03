fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish(arr)
  longest = arr.first
  arr.each_with_index do |el, i|
    next if i = arr.length - 1
    j = i + 1
    while j < arr.length
      if el[i].length > el[j].length && el[i].length > longest
        longest = el[i]
      end
    end
  end
  longest
end

def clever(arr)
  return merge_sort(arr).last
end

def merge_sort(arr)
  return arr if arr.length <=1
  mid = arr.length / 2
  left = arr[0...mid]
  right = arr[mid..-1]
  merge(left, right)
end

def merge(left, right)
  result = []
  until left.empty? || right.empty?
    if left.first < right.first
      result << left.shift
    else
      result << right.shift
    end
  end
  result + left + right
end

def clever(arr)
  longest = arr.first
  arr.each do |fish|
    longest = fish if fish.length > longest.length
  end
end
