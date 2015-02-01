actions :install
default_action :install

attribute :name, kind_of: String, name_attribute: true
attribute :host, kind_of: String, default: nil  # defaults to ip if nil
attribute :port, kind_of: Integer, default: nil  # defaults 5555 if nil
attribute :jvm_args, kind_of: String, default: nil
attribute :proxy, kind_of: String, default: 'org.openqa.grid.selenium.proxy.DefaultRemoteProxy'
attribute :maxSession, kind_of: Integer, default: 5
attribute :register, kind_of: [TrueClass, FalseClass], default: true
attribute :registerCycle, kind_of: Integer, default: 5000
attribute :hubPort, kind_of: Integer, default: 4444
attribute :hubHost, kind_of: String, default: nil # defaults to ip if nil
attribute :capabilities, kind_of: [Array, Hash], default: []

# linux only
attribute :display, kind_of: String, default: ':0' # DISPLAY must match running instance of Xvfb, x11vnc or equivalent

# windows only
attribute :domain, kind_of: String, default: nil
attribute :username, kind_of: String, default: nil
attribute :password, kind_of: String, default: nil