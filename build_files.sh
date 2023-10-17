echo "Build Started"
python3.9 -m pip install -r requirements.txt
python3.9 -m pip install psycopg2-binary
python3.9 -m pip install pillow
ls
python3.9 manage.py makemigrations --noinput
python3.9 manage.py migrate --noinput

# Run collectstatic without the interactive prompt
python3.9 manage.py collectstatic --noinput --clear

echo "Build Ended"