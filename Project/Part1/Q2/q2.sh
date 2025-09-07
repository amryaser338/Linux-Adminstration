#!/bin/bash
if [ -d q2 ]; then
	rm -r q2
fi
mkdir q2; touch q2/main.{c,h} q2/hello.{c,h}

for file in q2/*; do
    echo "this file is named $(basename "$file")" > "$file"
done

tar -cvf q2.tar q2
cp q2.tar /home/edges
cd /home/edges; tar -xf q2.tar
