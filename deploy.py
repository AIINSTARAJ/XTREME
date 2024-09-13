'''
The code for deployng the smart contract on TON Blockchain using TON-SDK

'''

from tonsdk import TonSdk

Ton = TonSdk(
    network_config ='testnet',
    secret_key = ''
)

def read_code(file):
    with open(file,'r') as f:
        code = f.read()
        return code

contract_code = read_code("xtc.sol")