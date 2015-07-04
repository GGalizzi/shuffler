  # A sample Guardfile
  # More info at https://github.com/guard/guard#readme

  ## Uncomment and set this to only include directories you want to watch
  # directories %w(app lib config test spec features)

  ## Uncomment to clear the screen before every task
  # clearing :on

  ## Guard internally checks for changes in the Guardfile and exits.
  ## If you want Guard to automatically start up again, run guard in a
  ## shell loop, e.g.:
  ##
  ##  $ while bundle exec guard; do echo "Restarting Guard..."; done
  ##
  ## Note: if you are using the `directories` clause above and you are not
  ## watching the project directory ('.'), then you will want to move
  ## the Guardfile to a watched dir and symlink it back, e.g.
  #
  #  $ mkdir config
  #  $ mv Guardfile config/
  #  $ ln -s config/Guardfile .
  #
  # and, you'll have to watch "config/Guardfile" instead of "Guardfile"

  # Guard-Rails supports a lot options with default values:
  # daemon: false                        # runs the server as a daemon.
  # debugger: false                      # enable ruby-debug gem.
  # environment: 'development'           # changes server environment.
  # force_run: false                     # kills any process that's holding the listen port before attempting to (re)start Rails.
  # pid_file: 'tmp/pids/[RAILS_ENV].pid' # specify your pid_file.
  # host: 'localhost'                    # server hostname.
  # port: 3000                           # server port number.
  # root: '/spec/dummy'                  # Rails' root path.
  # server: thin                         # webserver engine.
  # start_on_start: true                 # will start the server when starting Guard.
  # timeout: 30                          # waits untill restarting the Rails server, in seconds.
  # zeus_plan: server                    # custom plan in zeus, only works with `zeus: true`.
  # zeus: false                          # enables zeus gem.
  # CLI: 'rails server'                  # customizes runner command. Omits all options except `pid_file`!

  guard 'rails', host: '0.0.0.0' do
    watch('Gemfile.lock')
    watch(%r{^(config|lib)/.*})
  end

  guard :minitest do
    # with Minitest::Unit
    watch(%r{^test/(.*)\/?test_(.*)\.rb$})
    watch(%r{^test/(.*)\/(.*)_test\.rb$})
    watch(%r{^lib/(.*/)?([^/]+)\.rb$})     { |m| "test/#{m[1]}test_#{m[2]}.rb" }
    watch(%r{^test/test_helper\.rb$})      { 'test' }

    # with Minitest::Spec
    # watch(%r{^spec/(.*)_spec\.rb$})
    # watch(%r{^lib/(.+)\.rb$})         { |m| "spec/#{m[1]}_spec.rb" }
    # watch(%r{^spec/spec_helper\.rb$}) { 'spec' }

    # Rails 4
    # watch(%r{^app/(.+)\.rb$})                               { |m| "test/#{m[1]}_test.rb" }
    # watch(%r{^app/controllers/application_controller\.rb$}) { 'test/controllers' }
    # watch(%r{^app/controllers/(.+)_controller\.rb$})        { |m| "test/integration/#{m[1]}_test.rb" }
    # watch(%r{^app/views/(.+)_mailer/.+})                   { |m| "test/mailers/#{m[1]}_mailer_test.rb" }
    # watch(%r{^lib/(.+)\.rb$})                               { |m| "test/lib/#{m[1]}_test.rb" }
    # watch(%r{^test/.+_test\.rb$})
    # watch(%r{^test/test_helper\.rb$}) { 'test' }

    # Rails < 4
    # watch(%r{^app/controllers/(.*)\.rb$}) { |m| "test/functional/#{m[1]}_test.rb" }
    # watch(%r{^app/helpers/(.*)\.rb$})     { |m| "test/helpers/#{m[1]}_test.rb" }
    # watch(%r{^app/models/(.*)\.rb$})      { |m| "test/unit/#{m[1]}_test.rb" }
  end