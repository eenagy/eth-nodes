name = "eth-node-testnet-config"
architecture = "any"
summary = "TODO"
conflicts = []
recommends = []
provides = [""]
suggests = []
depends=[]
add_files = ["debian/testnet /var/lib/eth-node-testnet"]
add_links = []
add_manpages = []
long_doc = """eth-node-testnet-config
"""

[config."testnet.conf"]
format = "plain"
public = true 

[config."testnet.conf".ivars."BASE_CONFIG_NETWORK"]
type = "string"
default = "testnet"
priority = "low"
summary = "Network configuration, set to testnet"

[config."testnet.conf".ivars."BASE_CONFIG_ENGINE_API_PORT"]
type = "string"
default = "8551"
priority = "low"
summary = "Port for Execution Layer (EL) and Consensus Layer (CL) communication"

[config."testnet.conf".ivars."BASE_CONFIG_ENGINE_SCHEME"]
type = "string"
default = "http"
priority = "low"
summary = "Scheme for EL and CL communication"

[config."testnet.conf".ivars."BASE_CONFIG_ENGINE_HOST"]
type = "string"
default = "localhost"
priority = "low"
summary = "Host for EL and CL communication"

[config."testnet.conf".ivars."BASE_CONFIG_ENGINE_IP"]
type = "string"
default = "127.0.0.1"
priority = "low"
summary = "IP address for EL and CL communication"

[config."testnet.conf".ivars."BASE_CONFIG_DATA_DIR"]
type = "string"
default = "/var/lib/eth-node-testnet"
priority = "low"
summary = "Data directory where CL and EL directories are placed"

[config."testnet.conf".hvars."BASE_CONFIG_ENDPOINT_URL"]
type = "string"
template = "{/BASE_CONFIG_ENGINE_SCHEME}://{/BASE_CONFIG_ENGINE_HOST}:{/BASE_CONFIG_ENGINE_API_PORT}"
store = true
# summary = "Endpoint URL for EL and CL communication"

[config."testnet.conf".ivars."BASE_CONFIG_SECRETS_FILE"]
type = "string"
default = "/etc/eth-node-testnet/jwt.hex"
priority = "low"
summary = "JWT secrets file shared by CL and EL"

[config."testnet.conf".ivars."BASE_CONFIG_CUSTOM_NETWORK_TESTNET_DIR"]
type = "string"
default = "/var/lib/eth-node-testnet/testnet/custom_config_data"
priority = "low"
summary = "Directory for custom network testnet configuration"

[config."testnet.conf".hvars."BASE_CONFIG_CUSTOM_NETWORK_GENESIS_FILE"]
type = "string"
template = "{/BASE_CONFIG_CUSTOM_NETWORK_TESTNET_DIR}/genesis.json"
# summary = "Custom network genesis file location"
store = true

[config."testnet.conf".hvars."BASE_CONFIG_CUSTOM_NETWORK_GENESIS_STATE"]
type = "string"
template = "{/BASE_CONFIG_CUSTOM_NETWORK_TESTNET_DIR}/genesis.ssz"
# summary = "Custom network genesis state location"
store = true 

[config."testnet.conf".hvars."BASE_CONFIG_CUSTOM_NETWORK_CHAINCONFIG"]
type = "string"
template = "{/BASE_CONFIG_CUSTOM_NETWORK_TESTNET_DIR}/config.yaml"
# summary = "Custom network chain configuration file"
store = true 

[config."testnet.conf".ivars."BASE_CONFIG_CUSTOM_NETWORK_BOOTNODES_ENR"]
type = "string"
default = ""
priority = "low"
summary = "Bootnodes ENR for custom network"

[config."testnet.conf".ivars."BASE_CONFIG_CUSTOM_NETWORK_BOOTNODES_ENODE"]
type = "string"
default = ""
priority = "low"
summary = "Bootnodes ENODE for custom network"

[config."testnet.conf".ivars."BASE_CONFIG_CUSTOM_NETWORK_NETWORK_ID"]
type = "string"
default = ""
priority = "low"
summary = "Network ID for custom network"

[config."testnet.conf".ivars."BASE_CONFIG_EL_METRICS_PORT"]
type = "string"
default = ""
priority = "low"
summary = "Execution Layer (EL) metrics port"

[config."testnet.conf".ivars."BASE_CONFIG_EL_WS_PORT"]
type = "string"
default = ""
priority = "low"
summary = "Execution Layer (EL) WebSocket port"

[config."testnet.conf".ivars."BASE_CONFIG_EL_RPC_PORT"]
type = "string"
default = "8545"
priority = "low"
summary = "Execution Layer (EL) RPC port"

[config."testnet.conf".ivars."BASE_CONFIG_EL_P2P_PORT"]
type = "string"
default = ""
priority = "low"
summary = "Execution Layer (EL) P2P port"

[config."testnet.conf".ivars."BASE_CONFIG_CL_BEACON_API_URL"]
type = "string"
default = ""
priority = "low"
summary = "Consensus Layer (CL) Beacon API URL"

[config."testnet.conf".ivars."BASE_CONFIG_CL_CHECKPPOINT_SYNC_URL"]
type = "string"
default = ""
priority = "low"
summary = "Consensus Layer (CL) checkpoint sync URL"

[config."testnet.conf".ivars."BASE_CONFIG_CL_METRICS_PORT"]
type = "string"
default = ""
priority = "low"
summary = "Consensus Layer (CL) metrics port"

[config."testnet.conf".ivars."BASE_CONFIG_CL_RPC_PORT"]
type = "string"
default = "5052"
priority = "low"
summary = "Consensus Layer (CL) RPC port"

[config."testnet.conf".ivars."BASE_CONFIG_CL_P2P_PORT"]
type = "string"
default = ""
priority = "low"
summary = "Consensus Layer (CL) P2P port"

[config."testnet.conf".ivars."BASE_CONFIG_VALIDATOR_DATADIR"]
type = "string"
default = "/var/lib/eth-node-testnet/validator"
priority = "low"
summary = "Validator data directory"

[config."testnet.conf".hvars."BASE_CONFIG_VALIDATOR_BEACON_RPC_PROVIDER"]
type = "string"
template = "{/BASE_CONFIG_ENGINE_HOST}:4000"
# summary = "Validator beacon RPC provider"
store = true 

[config."testnet.conf".ivars."BASE_CONFIG_VALIDATOR_NUM_VALIDATORS"]
type = "string"
default = "64"
priority = "low"
summary = "Number of validators"

[config."testnet.conf".ivars."BASE_CONFIG_VALIDATOR_SHARED_FEE_RECEIPENT_ADDRESS"]
type = "string"
default = "0x123463a4b065722e99115d6c222f267d9cabb524"
priority = "low"
summary = "Shared fee recipient address for validator"
