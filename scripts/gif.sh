#!/usr/bin/env sh

# Copyright 2013 Jake Basile
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

# If shuf or gshuf are not available, you must install them 
curl -sL 'http://www.reddit.com/r/gifs/top.json?sort=top&t=day' |\
    sed "s/data/ð/g" |\
    tr 'ð' '\n' |\
    grep -v 'over_18": true' |\
    grep -Eo '"url": ?"([^"]*\.(gif))"' |\
    sed -E 's/.*(http.*)"/\1/' |\
<<<<<<< HEAD
    if which shuf > /dev/null; then
        shuf "$@"
    elif which gshuf > /dev/null; then
        gshuf "$@"
    else
    	echo 'ERROR: Requires shuf or gshuf'
    fi|\
=======
    shuf |\
>>>>>>> 70380d2b3e11f55f8b3b4caace359657f3a6a2ef
    head -n 1
