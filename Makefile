# help コマンド
.PHONY: help
help:
	@awk 'BEGIN {comment = ""} /^#/ {comment = substr($$0, 3)} /^[a-zA-Z0-9_-]+:/ {if (length(comment) > 0) {printf "%-40s %s\n", "make " substr($$0, 1, index($$0, ":")-1), comment; comment = ""}}' Makefile

# プロジェクトの setup
.PHONY: setup
setup:
	$(MAKE) npm-install

# npm によるインストール
.PHONY: npm-install
npm-install:
	npm install

# コード生成
.PHONY: build
build:
	flutter pub run build_runner build --delete-conflicting-outputs

# OpenAPI のコード生成
.PHONY: openapi-gen
openapi-gen:
	npx openapi-generator-cli validate -i ./openapi/openapi-spec.yaml

	npx openapi-generator-cli generate \
	  -i ./openapi/openapi-spec.yaml \
	  -g dart-dio \
	  -o ./generated/openapi-generator-cli

	cd generated/openapi-generator-cli && flutter pub run build_runner build --delete-conflicting-outputs