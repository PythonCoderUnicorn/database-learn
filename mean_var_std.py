
import numpy as np

def calculate(arr):
  if len(arr) != 9:
      raise ValueError("Input list must contain exactly 9 elements for a 3x3 matrix.")

  arr = np.array(arr).reshape(3, 3)

  mean = { 'mean': [arr.mean(axis=0).tolist(), arr.mean(axis=1).tolist(), arr.flatten().mean()]  }
  var = { 'variance': [arr.var(axis=0).tolist(), arr.var(axis=1).tolist(), arr.flatten().var()] }
  stdev = { 'standard deviation' : [arr.std(axis=0).tolist(), arr.std(axis=1).tolist(), arr.flatten().std() ] }
  maxx = { 'max': [arr.max(axis=0).tolist(), arr.max(axis=1).tolist(), arr.flatten().max()]  }
  minn = { 'min': [arr.min(axis=0).tolist(), arr.min(axis=1).tolist(), arr.flatten().min()]  }
  summ = { 'sum': [arr.sum(axis=0).tolist(), arr.sum(axis=1).tolist(), arr.flatten().sum()]  }

  d = {
      'mean': mean,
      'variance': var,
      'standard deviation': stdev,
      'max': maxx,
      'min': minn,
      'sum': summ
  }
  return d

try:
  # nums = [2, 6, 2, 8, 4, 0, 1, 5, 7]
  # nums = [9,1,5,3,3,3,2,9,0]
  nums= [0,1,2,3,4,5,6,7,8]
  result = calculate(nums)    

  for v in result.values():
    print(f"{v }")
  print("\n")
except ValueError as e:
  print(f"Error: {e}")
