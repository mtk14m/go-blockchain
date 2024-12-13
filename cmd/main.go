package main

import (
	"blockchain-mtk14m/internal/blockchain"
	"fmt"
)

func main() {

	chain := blockchain.InitBlockChain()
	chain.AddBlock("First Block after Genesis")
	chain.AddBlock("Second Block after Genesis")

	for _, block := range chain.Blocks {
		fmt.Printf("Prev. hash: %x\n", block.PrevHash)
		fmt.Printf("Data: %s\n", block.Data)
		fmt.Printf("Hash: %x\n", block.Hash)
	}
}
