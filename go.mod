module github.com/GDATASoftwareAG/fuse-device-plugin

go 1.19

require (
	github.com/fsnotify/fsnotify v1.5.1
	golang.org/x/net v0.5.0
	google.golang.org/grpc v1.53.0
	k8s.io/kubelet v0.25.1
)

replace k8s.io/kubelet => k8s.io/kubelet v0.25.1

require (
	github.com/gogo/protobuf v1.3.2 // indirect
	github.com/golang/protobuf v1.5.2 // indirect
	golang.org/x/sys v0.4.0 // indirect
	golang.org/x/text v0.6.0 // indirect
	google.golang.org/genproto v0.0.0-20230110181048-76db0878b65f // indirect
	google.golang.org/protobuf v1.28.1 // indirect
)
