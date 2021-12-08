# frozen_string_literal: true

require "test_helper"

class GoogleRecruitProblemTest < Test::Unit::TestCase
  test "VERSION" do
    assert do
      ::GoogleRecruitProblem.const_defined?(:VERSION)
    end
  end

  test "check primarity with orthodocs method" do
    [[2, true], [3, true], [11, true],
     [12, false], [16, false], [983, true], [984, false], [987, false]].each do |value, expect|
      assert_equal value.prime?, expect
    end
  end

  test "check primarity with undefined method" do
    [[2, true], [3, true], [11, true],
     [12, false], [16, false], [983, true], [984, false], [987, false]].each do |value, expect|
      assert_raise UndefinedPrimarityTestMethod do
        value.prime?(method='undefined')
      end
    end
  end


  test "check primarity with fermat method" do
    [[2, true], [3, true], [11, true],
     [12, false], [16, false], [983, true], [984, false], [987, false]].each do |value, expect|
      assert_equal value.prime?(method='fermat'), expect
    end
  end

  test "check reading 'e'" do
    require "stringio"
    $stdin = StringIO.new("2.71828182845904523536028747135266")
    assert_equal ::GoogleRecruitProblem.read_exp[0..9], "2.71828182"
    $stdin = STDIN
  end

end
