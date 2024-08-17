apt update -y
apt upgrade -y
apt install vim -y
mkdir /opt/airflow
apt install python3.11-venv libpq-dev
python3 -m venv /opt/airflow/venv
source /opt/airflow/venv/bin/activate
pip install apache-airflow psycopg2

airflow db init
airflow users create \
    --role Admin \
    --username admin \
    --email admin \
    --firstname admin \
    --lastname admin \
    --password admin
airflow scheduler
airflow webserver

# airflow db upgrade