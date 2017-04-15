# Makefile for CloudFormation
STACKNAME="CF02"

stack:
	aws cloudformation create-stack --stack-name $(STACKNAME) --template-body file://./basic.json

update:	
	aws cloudformation update-stack --stack-name $(STACKNAME) --template-body file://./basic.json

clean:
	aws cloudformation delete-stack --stack-name $(STACKNAME) 