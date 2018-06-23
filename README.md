# Refreshing Custom Template Manifest file
After reMarkable tablet update to 1.4.0.7
They now added another layer of templates.json
to make the browing of template faster and nicer, but result in harder to add the custom your own png template file.

This is the instruction how to add the template with the help of some script.
# Usage:

First copy "refresh_template.sh" from this repository to the same folder level as you have custom template, something like this:


    /usr/share/remarkable/templates/refresh_template.sh
    /usr/share/remarkable/templates/yourtemplate1.png
    /usr/share/remarkable/templates/yourtemplate2.png
    




and To run the refresh
First login to remarkable tablet via usb or ssh  
username is root  
password is in the Settings/About/Copy Right Notice/Bottom Page  

    root@192.168.1.99's password:
    ｒｅＭａｒｋａｂｌｅ
    ╺━┓┏━╸┏━┓┏━┓   ┏━╸┏━┓┏━┓╻ ╻╻╺┳╸┏━┓┏━┓
    ┏━┛┣╸ ┣┳┛┃ ┃   ┃╺┓┣┳┛┣━┫┃┏┛┃ ┃ ┣━┫┗━┓
    ┗━╸┗━╸╹┗╸┗━┛   ┗━┛╹┗╸╹ ╹┗┛ ╹ ╹ ╹ ╹┗━┛
    remarkable: ~/
Once login navigator the template folder:

`cd /usr/share/remarkable/templates`

then run  
`chmod u+x ./refresh_template.sh`  
(This only need to run once to make file executable. Next time you the same file, you dont need to run again, but it doesn't hurt if you accidentally run more than once)

And then...  

`./refresh_template.sh`   
:warning: Please save your work on your tablet by go to main screen before run this command.

Once the template is finished, it will restart the application service.  

result in:



    remarkable: /usr/share/remarkable/templates/ ./refresh_template.sh
    [INFO] Custom Template.png is new.
    [INFO] P Black dots.png is new.
    [INFO] P Black grid.png is new.
    [INFO] P Black lines.png is new.
    [INFO] P Black.png is new.
    remarkable: /usr/share/remarkable/templates/
    

You'll see custom template under "Custom" Category when choosing template

![](https://github.com/thamarnan/remarkable-custom-template-refresh/blob/master/images/custom_screenshot.jpeg?raw=true)

# Tips
if you put the LS in front of your custom filename,
The script will mark as Landscape as well.
`LS_Mytodolist.png`
or
`My workoutsheet LS.png`
both works.
