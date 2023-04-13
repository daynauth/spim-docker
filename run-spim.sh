file=$1
path=$(pwd)/$file
if [ -f "$file" ]; then
	docker run -i --rm -v $path:/spim/spim/$file daynauth/spim:latest /usr/bin/spim -keepstats -f $file
else
	echo "$file does not exist"
fi
