# termux-backup
Simple backup script for termux

[Raw Script](https://raw.githubusercontent.com/brunodavi/termux-backup/master/termux-backup.sh)

### Backup
    bash /sdcard/termux-backup.sh /sdcard/

### Restore
    bash /sdcard/termux-backup.sh /sdcard/termux_backup_23-59-59.tar.gz

---

### Quick Backup
    tar -zcf termux-backup_$(date +%s).tar.gz $HOME $PREFIX

### Quick Restore
    tar -zxf termux-backup_23-59-59.tar.gz ~/../
