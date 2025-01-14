# set up OTEL env variables
export OTEL_RESOURCE_ATTRIBUTES=service.name=py-otel-reqs-client,deployment.environment=apm-workshop
export OTEL_SERVICE_NAME=py-otel-client
export OTEL_EXPORTER_JAEGER_ENDPOINT=http://localhost:9080/v1/trace
export OTEL_TRACES_EXPORTER=jaeger-thrift-splunk
export OTEL_PROPAGATORS=b3multi
# ensure path is correct
export PATH="$HOME/.local/bin:$PATH"
splk-py-trace python3 python-requests.py