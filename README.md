# ping-request

Expose an endpoint to ping a given host & tell whether it's up or not

## Usage

Easily run using docker: `docker run -p 8080:8080 -e TARGET_IP=127.0.0.1 matiasgarciaisaia/ping-request`

You can alternatively run it locally, but you must ensure you have a compatible `ping` command that accepts `-w` for timeouts: `TARGET_IP=127.0.0.1 crystal run src/ping-request.cr`.

Or build & run: `crystal build --release src/ping-request.cr && TARGET_IP=127.0.0.1 ./ping-request`

## Contributing

1. Fork it (<https://github.com/matiasgarciaisaia/ping-request/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [matiasgarciaisaia](https://github.com/matiasgarciaisaia) Matias Garcia Isaia - creator, maintainer
