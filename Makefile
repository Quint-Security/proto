.PHONY: generate lint clean

generate:
	buf generate

lint:
	buf lint

clean:
	rm -rf gen/
