# termux-backup
Simple backup script for termux

[Raw Script](https://raw.githubusercontent.com/brunodavi/termux-backup/master/termux-backup.sh)

### Backup
    bash /sdcard/termux-backup.sh /sdcard/

### Restore
    bash /sdcard/termux-backup.sh /sdcard/termux_backup_23-59-59.tar.gz

---

### Quick Backup
    sh -c 'tar -zcf "$0_$(date +%s).tar.gz" $HOME $PREFIX' termux-backup

### Quick Restore
    sh -c 'tar -zxf "$0" ~/../ --recursive-unlink --preserve-permissions' termux-backup_1234567890.tar.gz
