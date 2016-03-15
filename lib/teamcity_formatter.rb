
class TeamCityFormatter < XCPretty::Simple

  # Used when opening a test target
  # For example: Test Suite 'Unit Tests.xctest' started at ...
  def format_test_run_started(name)
    "##teamcity[testSuiteStarted name='#{name}']"
  end

  # Used to signal a test target is complete
  def format_test_run_finished(name, time)

    if @previousSuite != nil
      # Close the last test suite before the target is complete
      testSuiteFinished(@previousSuite)
      @previousSuite = nil
    end

    "##teamcity[testSuiteFinished name='#{name}']"
  end

  def format_test_suite_started(name)
    #Skip the All tests, which comes first
    return "" if name == 'All tests'

    if @previousSuite != nil
       testSuiteFinished(@previousSuite)
    end

    @previousSuite = name
    "##teamcity[testSuiteStarted name='#{name}']"
  end

  def testSuiteFinished(name)
    puts "##teamcity[testSuiteFinished name='#{@previousSuite}']"
  end

  def format_passing_test(suite, test, time)
    "##teamcity[testStarted name='#{test}']\n" +
        "##teamcity[testFinished name='#{test}' duration='#{time}']"
  end

  def format_error(message)
    "##teamcity[testStdErr name='className.testName' out='#{message}']"
  end

  def format_failing_test(suite, test, time, file_path)
    "##teamcity[testStarted name='#{test}']\n" +
        "##teamcity[testFailed name='#{test}' message='#{time}']\n" +
        "##teamcity[testFinished name='#{test}']"
  end

  def format_check_dependencies()
    "##teamcity[progressMessage 'Check dependencies']"
  end

  def format_build_target(target, project, configuration)
    "##teamcity[progressMessage 'Building #{target}']"
  end

  def format_compile(file_name, file_path)
    "##teamcity[progressMessage 'Compiling #{file_name}']"
  end

  def format_touch(file_path, file_name)
    "##teamcity[progressMessage 'Touching #{file_name}']"
  end

  def format_phase_success(phase_name)
    "##teamcity[progressMessage '#{phase_name} Success']"
  end

end

TeamCityFormatter