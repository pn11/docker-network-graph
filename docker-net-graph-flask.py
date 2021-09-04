from flask import Flask
app = Flask(__name__)
docker_net_graph = __import__('docker-net-graph')

@app.route('/')
def root_route():
    return docker_net_graph.generate_graph(verbose=True, file=None, flask=True)


def main():
    app.debug = True
    app.run(host='0.0.0.0', port=5000)


if __name__ == "__main__":
    main()
