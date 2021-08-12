if [ "$#" -eq 0 ]
then
	echo need a backup file or folder
	exit 1
fi

times=$(date | grep -Po '\d+:\d+:\d+'| sed s/:/-/g)
dir="$(realpath $1)"

cd /data/data/com.termux/files/

backup() {
	tar_file="$dir/termux_backup_$times.tar.gz"
	tar -zcf "$tar_file" home usr
}

restore() {
	tar_file="$dir"
	tar -zxf "$tar_file" \
		--recursive-unlink \
		--preserve-permissions
}

if [ -d "$dir" ]
then
	backup
	echo backup created
elif [ -e "$dir" ]
then
	restore
	echo backup recovered
else
	echo invalid file or directory
fi

cd - &> /dev/null
