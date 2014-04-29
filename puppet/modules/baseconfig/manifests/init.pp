# Preforms basic configurations for our virtual box

class baseconfig {
  exec {
    'apt-get update':
      command => '/usr/bin/apt-get update';
  }

  host {
    'hostmachine':
      ip => '192.168.56.1';
  }
}
