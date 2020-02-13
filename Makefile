
publish-bucket:
	@aws s3 sync ./build s3://autoquizz.com

.PHONY: publish-bucket