# frozen_string_literal: true

require_relative "google_recruit_problem/version"
require "primality"

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
