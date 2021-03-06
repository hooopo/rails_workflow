require 'rails_helper'

module RailsWorkflow
  RSpec.describe ProcessTemplate, type: :model do
    let(:template) do
      create :process_template, process_class: 'RailsWorkflow::TestProcess'
    end

    it 'should init new process' do
      new_process = template.build_process!({})
      expect(new_process).to be_instance_of TestProcess
      expect(new_process.template).to eq template
    end
  end

  class TestProcess < RailsWorkflow::Process
  end
end
