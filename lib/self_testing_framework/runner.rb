module SelfTestingFramework
  class Runner

    def initialize(classes)
      @classes = classes
    end

    def execute
      #reporteer = Reporter.new

      @classes.each do |klass|
        klass.new.methods.grep(/test_/).each do |test_method|
          klass.run test_method
        end
      end

    end

  end
end
