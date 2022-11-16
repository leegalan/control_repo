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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCf2KiY/Xylzhhh2EtiErkv+rlKpoRDpiG0cNwsbQhyUNnO9o2ZTotXYONgz/3dVoxvCz1JTqOzXuBy/HAIlmRbgUZJAp4R3WNzfS3eVcuojTG9i8D3fcXiWxH5F3n2211S0Ru+PxfJ5PZ1Xz308ZDJcu2uxMXU9XszvxrW2IqTeoHwNCN1aHM4bbF+8HXYcnWc/anKHnugFGfCXJuaQspfS9PPIIEflFQom3jF2N2nTkGj+6ICWTeDSMYkTd+iJl8Qg5Ne4Dwxo+LlaCQZJSs71konTO2Qj+R1ruuhqCXlxt1ZV4KhWdny2EMV88tUKS2B9eA1gRtwZrGjAyx3sxyN',
	}  
}
