FROM golang:1.19-alpine as build
COPY hello.go /go/hello.go
RUN go build hello.go

FROM scratch
COPY --from=build /go/hello /app/hello
CMD ["/app/hello"]