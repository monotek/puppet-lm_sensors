# Module only for physical machines that sets up lm_sensors
class lm_sensors::service {
  # Start lm_sensors service
  service { 'lm_sensors':
    ensure  => $::lm_sensors::service_ensure,
    name    => $::lm_sensors::package,
    enable  => $::lm_sensors::service_enable,
    require => Exec['sensors-detect'],
  }
}
