def mrt(num)
  a = {name: "Regression Test #{num}"}
  RegressionTest.create(a)
end

def trt(num)
  b = {name: "Test Case #{num}"}
  TestCase.create(b)
end

def prt
  puts "R:\tT:"
  tr = TestRelationship.all
  tr.each do |t|
    outstring = ""
    outstring += t.regression_test_id.nil? ? "nil" : t.regression_test_id.to_s
    outstring += "\t"
    outstring += t.test_case_id.nil? ? "nil" : t.test_case_id.to_s
    puts outstring
  end
end

i = 1
10.times do
  mrt i
  i += 1
end

i = 1
10.times do
  trt i
  i += 1
end

