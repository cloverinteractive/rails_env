node['postgresql'] = {
  'version'           => '9.2',
  'enable_pitti_ppa'  => true,

  'server' => {
    'packages' =>  %w/postgresql-9.2/
  },

  'client' => {
    'packages' => %w/postgresql-client-9.2/
  },

  'config' => {
    'listen_address' => 'localhost',
    'port'           => '5432'
  },

  'pg_hba' => [
    { 'type' => 'local',  'db' => 'postgres', 'user' => 'postgres', 'addr' => nil,          'method' => 'trust' },
    { 'type' => 'host',   'db' => 'all',      'user' => 'all',      'addr' => '0.0.0.0/0',  'method' => 'md5' },
    { 'type' => 'host',   'db' => 'all',      'user' => 'all',      'addr' => '::1/0',      'method' => 'm5' }
  ],

  'password' => {
    'postgres' => 'foo'
  }
}

include_recipe 'postgresql::server'
