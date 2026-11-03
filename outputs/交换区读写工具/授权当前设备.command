#!/bin/zsh
set -e
app_dir=${0:A:h}
project_dir=${app_dir:h:h}
exec "$project_dir/work/analysis-env/bin/python" "$app_dir/launch.py"
