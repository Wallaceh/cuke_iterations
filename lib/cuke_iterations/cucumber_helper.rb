module CukeIterations
  module CucumberHelper
    def current_iteration(scenario)
      if scenario.is_a? Cucumber::Ast::Scenario
        scenario.feature.file
      elsif scenario.is_a? Cucumber::Ast::OutlineTable::ExampleRow
        scenario.scenario_outline.feature.file
      else
        raise "Can't deal with #{scenario.class.name}"
      end[/iterations\/(.+?)\//, 1]
    end
  end
end