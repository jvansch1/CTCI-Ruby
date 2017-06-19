# Pass in an array of grades
# IF grade is under 38, it is failing and no changes should be made
# If grade is less than 3 away from next multiple of 5, round uo

def solve(grades)
    new_grades = []
    grades.each do |grade|
        if grade < 38
            new_grades.push(grade)
        # Check to see if grade is two or one away from next multiple of 5
        elsif (grade + 2) % 5 == 0
            new_grades.push(grade + 2)
        elsif (grade + 1) % 5 == 0
            new_grades.push(grade + 1)
        else
            new_grades.push(grade)
        end
    end
    new_grades
end
