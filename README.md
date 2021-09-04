# Docker-Network-Graph-Flask

Visualize the relationship between Docker networks and containers
as a neat graphviz graph with Flask.

## Example

![example graph](https://raw.githubusercontent.com/LeoVerto/docker-network-graph/master/example.png)

## Usage

Run following command to start the Flask server.

    docker run --rm -v /var/run/docker.sock:/var/run/docker.sock -p 5000:5000 pn11/docker-network-graph-flask

Then open <http://localhost:5000>.

## Development

If you'd like to contribute to this project, there is a sample docker-compose file
using dummy containers in `test`.

You can deploy it using `docker-compose -f test/docker-compose.yml up -d`.
