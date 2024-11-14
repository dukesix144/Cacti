This project, **Cacti**: tools for users to install Cacti on shared web hosting.  Example graph templates, data query, and data input.

## Usage

To get started with **Project Cacti**, follow the steps below:

1. **Clone the repository:**
   ```bash
   git clone https://github.com/dukesix144/Cacti.git

2. When installing Cacti, import the sql file to your mysql database.
   Make the following changes to /lib/installer, which point the timezone to your mysql database instead of the root database on the box:
   
         if ($config['poller_id'] == 1) {
			$mysql_timezone_access = db_fetch_assoc('SHOW COLUMNS FROM cacti.time_zone_name', false);
		} else {
			$mysql_timezone_access = db_fetch_assoc('SHOW COLUMNS FROM cacti.time_zone_name', false, $local_db_cnn_id);
		}

		if (cacti_sizeof($mysql_timezone_access)) {
			$timezone_populated = db_fetch_cell('SELECT COUNT(*) FROM cacti.time_zone_name');
			if (!$timezone_populated) {
				$output .= Installer::sectionNormal('<span class="textError"><strong>' . __('ERROR:') . '</strong> ' .  __('Your MySQL TimeZone database is not populated.  Please populate this database before proceeding.') . '</span>');
				$enabled['mysql_timezone'] = DB_STATUS_ERROR;
			}
3. Install rrdtool with the myscript.bash.
4. Complete installation and enjoy.


<img src=https://github.com/dukesix144/Cacti/blob/main/players_per_game_server.png>
