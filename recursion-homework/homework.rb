
def add_numbers(array)
  return nil if array.empty?
  return array[0] if array.length == 1
  array[0] + add_numbers(array[1..-1])
end

def sum_to(n)
  return 1 if n == 1
  n + sum_to(n - 1)
end

def gamma_fnc(n)
  return nil if n == 0
  return 1 if n == 1
  return 1 if n == 2
  (n - 1) * gamma_fnc(n - 1)
end
