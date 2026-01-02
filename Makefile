.PHONY: lint test coverage
.PHONY: e2e goplaces

lint:
	golangci-lint fmt
	golangci-lint run ./...

test:
	go test ./...

coverage:
	./scripts/check-coverage.sh

e2e:
	go test -tags=e2e ./... -run TestE2E

goplaces:
	go build -o goplaces ./cmd/goplaces
