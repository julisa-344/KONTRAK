# KontraK

KontraK is a web platform for renting construction machinery and equipment. It helps contractors discover available equipment, request rentals by date, and allows administrators to manage inventory, reservations, and maintenance.

## Tech Stack
- Java 17, Spring Boot, Spring Security
- Thymeleaf, Bootstrap
- PostgreSQL (Neon DB)

## Local Development
1) Set environment variables (Neon DB dev branch):
```
export DATABASE_URL="jdbc:postgresql://<your-neon-host>/neondb?sslmode=require&channel_binding=require"
export DB_USERNAME="<your-user>"
export DB_PASSWORD="<your-password>"
export PORT=8080
```

2) Run the app:
```
./mvnw spring-boot:run
```

3) Open the app:
```
http://localhost:8080
```

## Notes
- Cloudinary is optional for local dev. If not configured, image uploads will use placeholders.
- The project seeds data from `src/main/resources/data.sql` on first run.
