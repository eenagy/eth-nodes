name = "eth-node-mainnet"
architecture = "any"
summary = "TODO"
conflicts = []
recommends = []
provides = ["eth-node"]
suggests = []
depends=["eth-node-mainnet-el-service", "eth-node-mainnet-cl-service"]
add_files = []
add_links = []
add_manpages = []
long_doc = """eth-node-mainnet
Package that install two random Ethereum consensus and execution client and
starts them running.
This package comes without validator. If you would like to have validator running
please install eth-node-mainnet-with-validator instead.
"""
