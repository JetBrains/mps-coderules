default: 
	@just --list

assemble:
	./gradlew -x coderules-generate -x fitch-generate -x lambdac-generate -x mpscore-generate assemble

test:
	./gradlew -x coderules-generate -x fitch-generate -x lambdac-generate -x mpscore-generate check

init:
	./gradlew -p dependencies
	mvn -Dmaven.javadoc.skip=true -B -f reactor install
	./gradlew setup

check: init
	./gradlew check
    
