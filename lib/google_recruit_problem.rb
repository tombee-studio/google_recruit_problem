# frozen_string_literal: true

require_relative "google_recruit_problem/version"

class UndefinedPrimarityTestMethod < StandardError; end

class Integer
  def prime?(method='ortho')
    if ['ortho', 'fermat'].include?(method)
      return self.public_send(method, self)
    else
      raise UndefinedPrimarityTestMethod.new("#{method} is not defined method")
    end
  end

  def ortho(n)
    (2...Math::sqrt(n).to_i+1).each do |value|
      if n % value == 0 ; return false end
    end
    return true
  end

  def fermat(n)
    if n == 2 ; return true end
    if n == 3 ; return true end
    (2...n).to_a.sample(n).each do |a|
      if n.gcd(a) != 1 or a.pow(n - 1, n).to_i % n != 1 ; return false end
    end
    return true
  end
end

module GoogleRecruitProblem
  class Error < StandardError; end

  # Your code goes here...
  module_function
  def read_exp
    return gets.to_s.chomp
  end

  module_function
  def main
    exp = read_exp
    (2..(exp.length - 10)).each do |start|
      v = exp[start..(start + 10 - 1)].to_i
      flag = v.prime?
      if flag
        puts "#{v}"
        return
      end
    end
  end
end
