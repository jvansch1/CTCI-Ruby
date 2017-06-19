# write a function which will rotate a matrix by 90 degrees

matrix = [[1,2,3], [4,5,6], [7,8,9]]

def rotate(matrix)
  new_matrix = []
  matrix.each_with_index do |row, idx|
    temp = []
    row.each_with_index do |value, idx2|
      temp.push(matrix[idx2][idx])
    end
    new_matrix.push(temp)
  end
  new_matrix
end

print rotate(matrix)
