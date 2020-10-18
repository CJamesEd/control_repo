class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDYUjJYlRzUrIKcDuEc3IojPjLnhq7cyTnCq+WavXjOVSbQ+VaGufsJJEuiT2EM9m7wtbSJH/JAf48rxGPWUa4EVUFwMMHv+7O1xyWw7CSQ+VSxI7cdhcLB5kbjrDkfbq5wihEByqEWKz03fj8c5wZLZYNUxxDBj77JPg4ibMPW2JFfZEg23NNyaeoVt9r8NHjjl4bYUOi0ofBW3ZbGzLJDOPKi6Y3Ts8qCQVrCXZ+yDMe/kTNb/YaEb+BKAOT6HPjwI2sgISKM/twn1n/yY4Xptl3supxLE8Na+e/BY/ObTLKkjvwhcMNJCvAMZEkbiRF+A6yl5t/MIe56mv7LZh93',
  }  
}
