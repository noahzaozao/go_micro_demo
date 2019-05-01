package main

import (
	"log"
	"github.com/micro/go-micro"

	//_ "github.com/micro/go-plugins/broker/nsq"
	_ "github.com/micro/go-plugins/registry/etcd"
)


func main() {
	service := micro.NewService(
		micro.Name("go.micro.demo"),
		micro.Version("latest"),
	)
	service.Init()

	// Run service
	if err := service.Run(); err != nil {
		log.Fatal(err)
	}
}
