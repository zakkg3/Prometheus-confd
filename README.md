# prometheus

Config by Confd with ssm backend

## Usage

Provide the environment viarables defined in the confd template in confd/template/prometheus.yml

### Mandatory

API_TARGET_URL = api.yourapp.io:9000

### Optionals:


SCRAPE_INTERVAL_SECS  (default 40)

EVAL_INTERVAL_SECS (default 70)

AWS_REGION (default eu-west-1)


#### Confd from AWS paramater storage's keypass (SSM)

/path/to/your/prometheus/access_key

/path/to/your/prometheus/secret_key

/path/to/your/prometheus/barer_token
