FROM golang

# Install modules

Add fec-go  /www/golang/fec-go
Add fec-go-shell  /www/golang/fec-go-shell
RUN chmod +x /www/golang/fec-go
RUN chmod +x /www/golang/fec-go-shell
RUN mkdir /www/test/xlsx
RUN chmod 777 /www/test/xlsx
EXPOSE 3000

CMD ["/www/golang/fec-go"]
