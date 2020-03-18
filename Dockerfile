FROM statsd/statsd:latest

ENTRYPOINT bash -c "echo '{ debug: true, dumpMessages: true, port: 8125, backends: [ \"./backends/console\" ] }' > config.js; node stats.js config.js"

EXPOSE 8125/udp 8126
