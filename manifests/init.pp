# Public: Install Go
#
# Examples
#
#   include go
#
class go {
  include homebrew

  homebrew::formula { 'go':
    source => 'puppet:///modules/go/brews/go.rb',
    before => Package['boxen/brews/go'] ;
  }

  package { 'boxen/brews/go':
    ensure  => '1.1.0-boxen1',
  }

}
