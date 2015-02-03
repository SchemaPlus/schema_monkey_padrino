require 'spec_helper'

describe SchemaMonkey::Padrino do

  before(:all) do
    # TODO: minimial setup for a padrino app goes here.  Here's what it is
    # for a Rails app:
    #
    # Kernel.const_set "Dummy", Class.new(Rails::Application) { config.eager_load = true }
    # ENV['DATABASE_URL'] = "#{SchemaDev::Rspec.db_configuration[:adapter]}://localhost/dummy"

    @client = Module.new do
      def self.insert
        @inserted = true
      end
      def self.inserted?
        @inserted
      end
      def self.reset
        @inserted = false
      end
    end

    SchemaMonkey.register(@client)

    # TODO: start up the padrino app here.
    # Here's what it is for a rails app
    #
    # Rake.application = Rake::Application.new
    # Rails.application.load_tasks
    # Rails.application.initialize!
  end

  after(:each) do
    @client.reset
  end

  xit "inserts client into app" do
    expect(@client).to be_inserted
  end

  xit "inserts client into rake" do
    expect { Rake::Task["ar:schema:dump"].invoke }.to raise_error(Errno::ENOENT)
    expect(@client).to be_inserted
  end

end
