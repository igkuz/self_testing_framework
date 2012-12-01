require "self_testing_framework/version"
require "active_support/core_ext/class/subclasses"

module SelfTestingFramework

  class AssertFalse < RuntimeError; end

  autoload "TestCase", "self_testing_framework/test_case"
  autoload "Runner", "self_testing_framework/runner"
  autoload "TestResult", "self_testing_framework/test_result"
  autoload "Reporter", "self_testing_framework/reporter"

end

at_exit do
  runner = SelfTestingFramework::Runner.new(SelfTestingFramework::TestCase.descendants)
  runner.execute
end
