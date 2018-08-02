# Geth Consensus Debug

이 레포지토리는 [Geth와 Delve를 사용한 이더리움 컨센서스 라이프사이클 디버깅](https://tech.etherstudy.net/ethereum/geth/delve/debug/consensus/lifecycle/2018/08/02/geth-consensus-lifecycle-debug) 포스트를 위한 디버그환경을 쉽게 설정하기 위한 레포지토리입니다.

테스트용 private network를 구성하고 delve를 사용해 디버그를 시작할 수 있는 스크립트를 포함하고 있습니다.

## Pre requisites

1. go-ethereum 소스코드와 geth binary를 준비합니다.

    ```shell
    go get github.com/ethereum/go-ethereum
    go install github.com/ethereum/go-ethereum/cmd/geth
    ```
2. delve

    geth 디버그에는 delve를 사용할 것입니다. 설치는 다음 링크를 통해 확인해주세요.

    [https://github.com/derekparker/delve/tree/master/Documentation/installation](https://github.com/derekparker/delve/tree/master/Documentation/installation)


## Getting started

다음 순서로 진행하면 됩니다.

```shell
./init-nodes.sh
```

```shell
# Miner node
./debug-miner-node.sh
(dlv) # set break points first
(dlv) # continue
```

```shell
# Miner console
./attach-miner-node.sh
> 
```

```shell
# Validator node
./debug-validator-node.sh
(dlv) # set break points for validator herefirst
(dlv) # continue
```

```shell
# Validator console
./attach-validator-node.sh
> 
```
