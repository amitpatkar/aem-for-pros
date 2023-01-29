#!/bin/bash

#define variables
PWD=~/code/aem-projects
export c1Home=$PWD/client1
export c1HomeCode=$c1Home/code
export c1HomeDispatcher=$c1Home/dispatcher/dispatcher-sdk-2.0.85
export c1HomeAuthor=$c1Home/app/author/crx-quickstart
export c1HomePublish=$c1Home/app/publish/crx-quickstart
export CQ_JVM_OPTS_DEBUG="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8765"
export CQ_JVM_OPTS_DEBUG_P="-Xdebug -Xrunjdwp:transport=dt_socket,server=y,suspend=n,address=8766"
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.11.jdk/Contents/Home

#Helper
alias c1="cd $c1Home"
alias c1aem="cd $c1HomeAuthor"
alias c1aemp="cd $c1HomePublish"
alias c1code="cd $c1HomeCode"
alias c1d="cd $c1HomeDispatcher"

#Author
alias c1start="$c1HomeAuthor/bin/start"
alias c1startdebug="$c1HomeAuthor/bin/start-debug"
alias c1stop="$c1HomeAuthor/bin/stop"
alias c1tail="tail -f $c1HomeAuthor/logs/error.log"

#publish
alias c1startp="$c1HomePublish/bin/start"
alias c1stopp="$c1HomePublish/bin/stop"
alias c1tailp="tail -f $c1HomePublish/logs/error.log"

alias c1clearlogs="rm -f $c1HomeAuthor/logs/*"
alias c1j="export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk-11.0.11.jdk/Contents/Home"

#Complete Installation Author Server
alias p="mvn clean install  -DskipTests -PautoInstallPackage,adobe-public"
#Core and Apps (Author Server)
alias pd="mvn -pl core -pl ui.apps clean install  -DskipTests -PautoInstallPackage,adobe-public"
#Core Apps and Config
alias pd="mvn -pl core -pl ui.apps -pl ui.config clean install  -DskipTests -PautoInstallPackage,adobe-public"
#Apps and Front End (Without the Core Bundle)
alias pdf="mvn -pl ui.apps -pl ui.frontend clean install  -DskipTests -PautoInstallPackage,adobe-public"
# Installation on Publish Server
alias pdp="mvn -pl core -pl ui.apps clean install  -DskipTests -PautoInstallPackagePublish,adobe-public"
# Complete Installation on Publish Server
alias pp="mvn  clean install  -DskipTests -PautoInstallPackagePublish,adobe-public"
