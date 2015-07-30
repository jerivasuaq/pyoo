#!/bin/bash

echo "Starting openoffice headless..."
#soffice --accept="socket,host=localhost,port=2002;urp;" --norestore --nologo --nodefault
soffice --accept="pipe,name=hello;urp;" --norestore --nologo --nodefault &
sleep 3
echo "  Done."

rm -f example.xlsx

python3 calculate_openoffice.py


