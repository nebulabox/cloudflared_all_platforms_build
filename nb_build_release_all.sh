#!/usr/bin/env sh
NAME=cloudflared
SRC="github.com/cloudflare/cloudflared/cmd/cloudflared"
CGO_ENABLED=0 GOOS=darwin GOARCH=amd64 go build                    -mod=vendor -ldflags="-w -s" -o release/${NAME}_darwin_amd64 ${SRC}
CGO_ENABLED=0 GOOS=darwin GOARCH=arm64 go build                    -mod=vendor -ldflags="-w -s" -o release/${NAME}_darwin_arm64 ${SRC}
CGO_ENABLED=0 GOOS=freebsd GOARCH=386 go build                     -mod=vendor -ldflags="-w -s" -o release/${NAME}_freebsd_386 ${SRC}
CGO_ENABLED=0 GOOS=freebsd GOARCH=amd64 go build                   -mod=vendor -ldflags="-w -s" -o release/${NAME}_freebsd_amd64 ${SRC}
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build                     -mod=vendor -ldflags="-w -s" -o release/${NAME}_linux_amd64 ${SRC}
CGO_ENABLED=0 GOOS=linux GOARCH=386 go build                       -mod=vendor -ldflags="-w -s" -o release/${NAME}_linux_386 ${SRC}
CGO_ENABLED=0 GOOS=linux GOARCH=arm64 go build                     -mod=vendor -ldflags="-w -s" -o release/${NAME}_linux_arm64 ${SRC}
CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=7 go build               -mod=vendor -ldflags="-w -s" -o release/${NAME}_linux_arm7 ${SRC}
CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=6 go build               -mod=vendor -ldflags="-w -s" -o release/${NAME}_linux_arm6 ${SRC}
CGO_ENABLED=0 GOOS=linux GOARCH=arm GOARM=5 go build               -mod=vendor -ldflags="-w -s" -o release/${NAME}_linux_arm5 ${SRC}
CGO_ENABLED=0 GOOS=linux GOARCH=mips go build                      -mod=vendor -ldflags="-w -s" -o release/${NAME}_linux_mips ${SRC}
CGO_ENABLED=0 GOOS=linux GOARCH=mipsle go build                    -mod=vendor -ldflags="-w -s" -o release/${NAME}_linux_mipsle ${SRC}
CGO_ENABLED=0 GOOS=linux GOARCH=mips GOMIPS=softfloat go build     -mod=vendor -ldflags="-w -s" -o release/${NAME}_linux_mips_softfloat ${SRC}
CGO_ENABLED=0 GOOS=linux GOARCH=mipsle GOMIPS=softfloat go build   -mod=vendor -ldflags="-w -s" -o release/${NAME}_linux_mipsle_softfloat ${SRC}
CGO_ENABLED=0 GOOS=linux GOARCH=mips64 go build                    -mod=vendor -ldflags="-w -s" -o release/${NAME}_linux_mips64 ${SRC}
CGO_ENABLED=0 GOOS=linux GOARCH=mips64le go build                  -mod=vendor -ldflags="-w -s" -o release/${NAME}_linux_mips64le ${SRC}
CGO_ENABLED=0 GOOS=linux GOARCH=mips64 GOMIPS=softfloat go build   -mod=vendor -ldflags="-w -s" -o release/${NAME}_linux_mips64_softfloat ${SRC}
CGO_ENABLED=0 GOOS=linux GOARCH=mips64le GOMIPS=softfloat go build -mod=vendor -ldflags="-w -s" -o release/${NAME}_linux_mips64le_softfloat ${SRC}
CGO_ENABLED=0 GOOS=linux GOARCH=ppc64 go build                     -mod=vendor -ldflags="-w -s" -o release/${NAME}_linux_ppc64 ${SRC}
CGO_ENABLED=0 GOOS=linux GOARCH=ppc64le go build                   -mod=vendor -ldflags="-w -s" -o release/${NAME}_linux_ppc64le ${SRC}
CGO_ENABLED=0 GOOS=netbsd GOARCH=386 go build                      -mod=vendor -ldflags="-w -s" -o release/${NAME}_netbsd_386 ${SRC}
CGO_ENABLED=0 GOOS=netbsd GOARCH=amd64 go build                    -mod=vendor -ldflags="-w -s" -o release/${NAME}_netbsd_amd64 ${SRC}
CGO_ENABLED=0 GOOS=openbsd GOARCH=386 go build                     -mod=vendor -ldflags="-w -s" -o release/${NAME}_openbsd_386 ${SRC}
CGO_ENABLED=0 GOOS=openbsd GOARCH=amd64 go build                   -mod=vendor -ldflags="-w -s" -o release/${NAME}_openbsd_amd64 ${SRC}
CGO_ENABLED=0 GOOS=windows GOARCH=amd64 go build                   -mod=vendor -ldflags="-w -s" -o release/${NAME}_windows_amd64.exe ${SRC}
CGO_ENABLED=0 GOOS=windows GOARCH=386 go build                     -mod=vendor -ldflags="-w -s" -o release/${NAME}_windows_386.exe ${SRC}
CGO_ENABLED=0 GOOS=windows GOARCH=arm64 go build                   -mod=vendor -ldflags="-w -s" -o release/${NAME}_windows_arm64.exe ${SRC}
