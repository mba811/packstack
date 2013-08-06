class { 'quantum::agents::l3':
  interface_driver        => '%(CONFIG_QUANTUM_L3_INTERFACE_DRIVER)s',
  external_network_bridge => '%(CONFIG_QUANTUM_L3_EXT_BRIDGE)s',
}

sysctl::value { 'net.ipv4.ip_forward':
  value => '1'
}
