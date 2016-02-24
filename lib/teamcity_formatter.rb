
class TeamCityFormatter < XCPretty::Simple

  def format_test_run_started(name)
    "##teamcity[testSuiteStarted name='#{name}']"
  end

  def format_test_run_finished(name, time)
    "##teamcity[testFinished name='#{name}']"
  end

  def format_test_suite_started(name)
    "##teamcity[testSuiteStarted name='#{name}']"
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
    "##teamcity[progressMessage 'Compiling #{file_name}'"
  end

  def format_touch(file_path, file_name)
    "##teamcity[progressMessage 'Touching #{file_name}'"
  end

  def format_phase_success(phase_name)
    "##teamcity[progressMessage '#{phase_name} Success'"
  end

end

TeamCityFormatter