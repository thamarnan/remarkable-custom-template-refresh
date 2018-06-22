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
`./refresh_template.sh`

result in:



    remarkable: /usr/share/remarkable/templates/ ./refresh_template.sh
    [INFO] Custom Template.png is new.
    [INFO] P Black dots.png is new.
    [INFO] P Black grid.png is new.
    [INFO] P Black lines.png is new.
    [INFO] P Black.png is new.
    remarkable: /usr/share/remarkable/templates/
    

Then turn off the remarkable and turn back on.
You'll see custom template under "Creative" Category with Blank thumbnail

I'm still figuring out how to get the thumbnail to view properly


