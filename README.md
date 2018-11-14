# prometheus

Config by Confd with ssm backend

## Usage

This image its pre configured to get the secrets from ssm. you can use directly from environment vars, but its not the best practice for secrets. If you want to doy it:
 * change the docker-entrypoint and deelete the backend flag for confd.
 * update the confd template reemplace getv for getenv as the others env vars in this template.
 

## Enviroment viarables

Environment viarables defined in the confd template in confd/template/prometheus.yml

### Mandatory

API_TARGET_URL = api.yourapp.io:9000
AWS_REGION (for ssm backend)
### Optionals:


SCRAPE_INTERVAL_SECS  (default 40)

EVAL_INTERVAL_SECS (default 70)

AWS_REGION (default eu-west-1)


#### Confd from AWS paramater storage's keypass (SSM)

/path/to/your/prometheus/access_key

/path/to/your/prometheus/secret_key

/path/to/your/prometheus/barer_token
