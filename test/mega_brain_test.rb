# frozen_string_literal: true

require_relative "test_helper"

class MegaBrainTest < Test::Unit::TestCase
  test "has a semantic version" do
    assert_match(/\A\d+\.\d+\.\d+(\.[0-9A-Za-z.]+)?\z/, MegaBrain::VERSION)
  end

  test "version is frozen" do
    assert_predicate(MegaBrain::VERSION, :frozen?)
  end

  test "defines a base error" do
    assert_operator(MegaBrain::Error, :<, StandardError)
  end
end
