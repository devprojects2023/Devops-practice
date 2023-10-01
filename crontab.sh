# this cron needs to set to make the instance start and stop on a specific schedule. 
# copy your script to your path and run it as a cron job.
# go to your terminal and type: crontab -e, then choose a editor as per your choice then paste the following code
crontab -e

# paste the following command and replace "you_script_path" and "path_where_you_want_to_save_the_log_file" to your path. This cron will stop the instance at night 9 pm and start at morning 9 am.
# But remember one thing that cron will work on timezone, so you will need to check you localtime zone. I have a specific blog for cronjob youcan refer to that blog.
# https://onestoptech.co.in/overcoming-cronjob-setup-issues-a-guide-for-success-setup-timezone

# * 21 * * * "you_script_path"/home/ubuntu/ec2-stop.sh YOUR_INSTANCE_ID > "path_where_you_want_to_save_the_log_file"/start.log 2>&1
# * 9 * * * "you_script_path"/home/ubuntu/ec2-stop.sh YOUR_INSTANCE_ID > "path_where_you_want_to_save_the_log_file"/stop.log 2>&1

* 21 * * * /home/ubuntu/ec2-stop.sh i-abck19574151145 > /home/ubuntu/stop.log 2>&1
* 9 * * * /home/ubuntu/ec2-start.sh i-abck19574151145 > /home/ubuntu/start.log 2>&
