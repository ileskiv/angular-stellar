angular.module 'application' <[
  ui.bootstrap
  ga
  ngSanitize
  angular.stellar
]>
.run <[ 
        $log  stellarConfig
]> ++ !($log, stellarConfig) ->
  stellarConfig.horizontalScrolling = false
  $log.log stellarConfig