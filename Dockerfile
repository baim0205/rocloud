# Gunakan image resmi Golang sebagai base image
FROM golang:latest

# Set working directory di dalam container
WORKDIR /go/src/app

# Copy seluruh konten dari direktori proyek ke dalam working directory di dalam container
COPY . .

# Compile aplikasi Go
RUN go build -o main .

# Expose port yang digunakan oleh aplikasi
EXPOSE 8181

# Command untuk menjalankan aplikasi ketika container dijalankan
CMD ["./main"]
