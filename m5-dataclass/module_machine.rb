class ModuleProgress
    attr_accessor :state, :fail_counter

    def complete_task(m)
        if m.state == "Introductory Exercises"
            m.state = "Project"
        elsif m.state == "Project"
            m.state = "Benchmark"
        end
    end

    def pass_task(m)
        if m.state == "Benchmark"
            m.state = "Module Complete"
        end
    end

    def fail_task(m)
        m.fail_counter += 1
        if m.fail_counter == 3
            m.state = "Fail"
        elsif m.state == "Benchmark"
            m.state = "Project"
        end
    end
end


module_progress = ModuleProgress.new()
module_progress.state = "Introductory Exercises"
module_progress.fail_counter = 0
while true
    puts "Current State: #{module_progress.state}"
    puts "[Complete] module work, [Pass] benchmark or [Fail]ed benchmark?"
    action = gets.chomp.capitalize()
    if action == "Complete"
        module_progress.complete_task(module_progress)
    elsif action == "Pass"
        module_progress.pass_task(module_progress)
    elsif action == "Fail"
        module_progress.fail_task(module_progress)
    else
        puts "Invalid transition"
    end
    if module_progress.state == "Module Complete" or module_progress.state == "Fail"
        break
    end
end
puts "Current state: " + module_progress.state