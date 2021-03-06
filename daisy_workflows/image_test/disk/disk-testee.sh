#!/bin/sh
# Copyright 2018 Google Inc. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

if [ ! -e /reboot.txt ]; then
    logger -p daemon.info "BOOTED"
    echo > /reboot.txt
else
    logger -p daemon.info "REBOOT"
fi

while [ 1 ]; do
  echo TotalDisks:`ls /dev/sd* | grep [a-z]$ | wc -l` | logger -p daemon.info
  sleep 1
done
