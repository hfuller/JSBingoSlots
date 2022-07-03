#!/usr/bin/env bash
set -eu -o pipefail

cd img/
for x in *.gif; do
	(wget "https://www.nick99nack.com/slingo/JSSlingo/img/$x" -O $x --quiet && echo "$x Done") || echo "$x ERROR"
done

