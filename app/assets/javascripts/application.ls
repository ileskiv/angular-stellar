angular.module 'demo' <[
  ngSanitize
  ui.bootstrap
  angular.stellar
]>
.run <[ 
        $log  stellarConfig
]> ++ !($log, stellarConfig) ->
  stellarConfig.horizontalScrolling = false
  $log.log stellarConfig
