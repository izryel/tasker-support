#!/system/bin/sh
export RISH_APPLICATION_ID="%APP_PACKAGE"
if [ -z $1 ]; then
  echo "error: no args"
  exit 1
else
  sh /system/bin/app_process -Djava.class.path="/data/data/%APP_PACKAGE/files/bin/rish_shizuku.dex" /system/bin --nice-name=rish rikka.shizuku.shell.ShizukuShellLoader "$@"
fi
