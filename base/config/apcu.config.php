<?php
$CONFIG = array (
  'memcache.local' => '\OC\Memcache\APCu',
  'redis' => array(
    'host' => 'redis',
    'port' => 6379,
  ),
  'memcache.locking' => '\OC\Memcache\Redis',
);
