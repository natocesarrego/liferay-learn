curl -F "file=@./resources/g9i6.txt" -H "Content-Type: multipart/form-data" -X POST "http://localhost:8080/o/headless-delivery/v1.0/sites/${1}/documents" -u 'test@liferay.com:test'