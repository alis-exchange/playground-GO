module foo.br.resources.books.v1

go 1.17

require (
	go.protobuf.foo.alis.exchange v0.0.0-20220210124710-f9f5c0cc7780
	google.golang.org/grpc v1.40.1
)

require google.golang.org/protobuf v1.27.1 // indirect

require (
	cloud.google.com/go/compute v1.2.0 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	golang.org/x/net v0.0.0-20210503060351-7fd8e65b6420 // indirect
	golang.org/x/oauth2 v0.0.0-20211104180415-d3ed0bb246c8 // indirect
	golang.org/x/sys v0.0.0-20220204135822-1c1b9b1eba6a // indirect
	golang.org/x/text v0.3.6 // indirect
	google.golang.org/appengine v1.6.7 // indirect
	google.golang.org/genproto v0.0.0-20220204002441-d6cc3cc0770e // indirect
)

// Use the replace when developing locally
replace go.protobuf.foo.alis.exchange => ./internal
