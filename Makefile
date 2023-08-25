# Preferred
proto_helloworld:
	protoc \
    --proto_path=helloworld/proto \
    --go_out=helloworld/pb --go_opt=paths=source_relative \
    --go-grpc_out=helloworld/pb --go-grpc_opt=paths=source_relative \
    helloworld.proto


proto_helloworld1:
	protoc --go_out=helloworld/pb --go_opt=paths=source_relative \
    --go-grpc_out=helloworld/pb --go-grpc_opt=paths=source_relative \
    helloworld/proto/helloworld.proto

proto_helloworld2:
	protoc --go_out=. --go_opt=paths=source_relative \
    --go-grpc_out=. --go-grpc_opt=paths=source_relative \
    helloworld/proto/helloworld.proto

proto_helloworld3:
	protoc \
    --proto_path=helloworld \
    --go_out=. --go_opt=paths=source_relative \
    --go-grpc_out=. --go-grpc_opt=paths=source_relative \
    proto/helloworld.proto
