export PATH=$PATH:~/go/bin

protoc --go_out=plugins=grpc:. *.proto

python -m grpc_tools.protoc -I . --python_out=python --grpc_python_out=python *.proto