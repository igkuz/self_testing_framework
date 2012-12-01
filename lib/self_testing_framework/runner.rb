module SelfTestingFramework
  class Runner

    def initialize(classes)
      @classes = classes
    end

    def execute
      reporter = Reporter.new
      test_results = TestResult.new

      @classes.each do |klass|
        klass.new.methods.grep(/test_/).each do |test_method|
          begin
            klass.run test_method
            test_results.passed(klass.name, test_method)
          rescue SelfTestingFramework::AssertFalse => e
            test_results.errored(klass.name, test_method, e.message)
          end
          reporter.report test_results.last_test
        end
      end
      reporter.total_report test_results
    end

  end
end
