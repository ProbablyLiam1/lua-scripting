# lua-scripting

This repo was created to hold macros used by the LogitechG402 Mouse implemented in the Logitech Gaming Software application

The scripts here should work for any Macro Mouse application that supports Lua, but all were tested in Logitech Gaming Software only 

Download [Logitech Gaming Software here](https://support.logi.com/hc/en-us/articles/360025298053-Logitech-Gaming-Software) and follow the instructions provided

## Instructions to Implement Scripts in Logitech Gaming Software

First, open Logitech Gaming Software and select the 'Customize Buttons' tab at the bottom of the application
Then, click the '+' in the 'Profiles' menu at the top and create a new profile

![image showing the app with the add button circled in red](https://github.com/ProbablyLiam1/lua-scripting/blob/main/images%20for%20readme/create%20a%20new%20profile.JPG?raw=true)

Next, right click the profile and select 'scripting'

![image showing the app with the scripting option available](https://github.com/ProbablyLiam1/lua-scripting/blob/main/images%20for%20readme/select%20scripting.png?raw=true)

## Guidelines for using the Repo Scripts

Overwrite the existing lines in the scripting file with the entirety of [base.lua](https://github.com/ProbablyLiam1/lua-scripting/blob/main/Runescape/base.lua)

![image showing the scripting file once overwritten](https://github.com/ProbablyLiam1/lua-scripting/blob/main/images%20for%20readme/overwrite%20the%20existing%20script.png?raw=true)

Now, insert the functions from whatever script you're trying to use, example: [makeSoftClay.lua](https://github.com/ProbablyLiam1/lua-scripting/blob/main/Runescape/makeSoftClay.lua)

Figure out what 'arg' id you want to use for the macro by clicking the ideal mouse button and reading the console, then call the function, ex: makeSoftClay(27) under that 'event if'

![image showing makeSoftClay implemented](https://github.com/ProbablyLiam1/lua-scripting/blob/main/images%20for%20readme/copy%20and%20paste%20the%20base.lua%20script%20here.png?raw=true)

The script should be active immediately, if it's not working properly, calibrate the following variables by using the printCurrentMousePosition() event implementation

## Script Calibration

Calibrate firstRowPos and firstColumnPos by hovering your mouse centered on the top left slot in your Runescape inventory, clicking with printCurrentMousePosition() implemented, and replacing the X and Y values  
<ul>
<li>X for Column and Y for Row</li>
</ul>   </br>
Calibrate distanceBetweenEachRow and distanceBetweenEachColumn by using printCurrentMousePosition() while hovering your mouse on the 'down right' Runescape inventory slot and using a handy trick called 'subtraction' between the new and old X and Y values
</br>
<ul>
<li>distanceBetweenEachColumn = (new Y position) - firstColumnPos</li>
<li>distanceBetweenEachRow = (new X position) - firstRowPos</li>
</ul>   </br>
