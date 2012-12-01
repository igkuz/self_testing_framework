require "self_testing_framework/version"
require "active_support/core_ext/class/subclasses"

module SelfTestingFramework

  autoload "TestCase", "self_testing_framework/test_case"
  autoload "Runner", "self_testing_framework/runner"

end

at_exit do
  runner = SelfTestingFramework::Runner.new(SelfTestingFramework::TestCase.descendants)
  runner.execute
end
