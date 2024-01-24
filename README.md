# Palworld-server-backup

backup palworld server's Config & SaveGames

working on Linux crontab or WSL(Windows Subsystem for Linux) crontab

## Requirement
- zip

## Usage
You should override:
- `saved_path`: Where is your `PalServer/Pal/Saved`
- `backup_dirname`(optional): What folder name you want
- `keep_days`(optional): Delete files older than `keep_days` days

## License

[MIT](./LICENSE)