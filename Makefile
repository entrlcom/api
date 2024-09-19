mintlify-all:
	make openapi-bundle && make mintlify-scrape

mintlify-scrape:
	npx @mintlify/scraping@latest openapi-file ./mintlify/openapi.yaml -o ./mintlify/openapi

openapi-bundle:
	openapi bundle ./openapi/openapi.yaml -o ./mintlify/openapi.yaml

openapi-lint:
	openapi lint ./openapi/openapi.yaml

#openapi-split:
#	openapi split openapi.yaml --outDir ./openapi
