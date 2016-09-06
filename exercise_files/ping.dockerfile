FROM alpine:latest

ENV var1=ping var2=8.8.8.8
CMD $var1 $var2