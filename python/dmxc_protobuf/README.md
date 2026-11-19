# dmxc_protobuf

Generated gRPC/protobuf client library for DMXControl 3.

```python
import grpc
from dmxc_protobuf.Client import AudioClient_pb2_grpc

channel = grpc.insecure_channel("localhost:50051")
stub = AudioClient_pb2_grpc.AudioClientStub(channel)
```
