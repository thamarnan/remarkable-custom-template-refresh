# Refreshing Custom Template Manifest file
After reMarkable tablet update to version 1.4.0.7 and above
They now added another layer of templates.json
to make the rendering of template faster and nicer, but result in harder with more steps required before adding the custom template file.

This script will help manage the json manifest of the new file you added.

This is the instruction how to add the template with the help of some script.
# Usage:

First copy "refresh_template.sh" from this repository to the same folder level as you have custom template
(Any method from ssh, scp, or even copy and paste, but make sure all characters from the code get the unit)

This is the path where the script should be:

    /usr/share/remarkable/templates/refresh_template.sh
    ..
    # same path along with other templates
    ..
    /usr/share/remarkable/templates/yourtemplate1.png
    /usr/share/remarkable/templates/yourtemplate2.png
    
    
After copied script to the unit
then we going to run it.
To run, you can use any ssh client, For Windows checkout'putty', For Mac/Unix, just use built-in terminal

username is root  
password is in the Settings/About/Copyright Notice/{Bottom Section of the Page}  

    root@192.168.1.99's password:
    ｒｅＭａｒｋａｂｌｅ
    ╺━┓┏━╸┏━┓┏━┓   ┏━╸┏━┓┏━┓╻ ╻╻╺┳╸┏━┓┏━┓
    ┏━┛┣╸ ┣┳┛┃ ┃   ┃╺┓┣┳┛┣━┫┃┏┛┃ ┃ ┣━┫┗━┓
    ┗━╸┗━╸╹┗╸┗━┛   ┗━┛╹┗╸╹ ╹┗┛ ╹ ╹ ╹ ╹┗━┛
    remarkable: ~/

Once login,
navigator the template folder:

`cd /usr/share/remarkable/templates`

then run  

`chmod u+x ./refresh_template.sh`  

(This chmod command - only need to run once to make file executable.  
Next time if you are using the same file, you dont need to run it again, but it doesn't hurt if you accidentally run more than once)

And then...  

`./refresh_template.sh`   
:warning: Please save your work on your tablet by go to main screen before run this command.

Once the template is finished, it will restart the application service; so no need to restart it manually  

You will see the result of new template added, to be something like this:

    remarkable: /usr/share/remarkable/templates/ ./refresh_template.sh
    [INFO] Custom Template.png is new.
    [INFO] P Black dots.png is new.
    [INFO] P Black grid.png is new.
    [INFO] P Black lines.png is new.
    [INFO] P Black.png is new.
    remarkable: /usr/share/remarkable/templates/
    
:white_check_mark: After restarted completed, check on the tablet itself: You'll see custom template under "Custom" Category when choosing template

![](https://github.com/thamarnan/remarkable-custom-template-refresh/blob/master/images/custom_screenshot.jpeg?raw=true)

# Tips
if you put the LS in front of your custom filename,
The script will mark as Landscape as well.
`LS_Mytodolist.png`
or
`My workoutsheet LS.png`
both works.
