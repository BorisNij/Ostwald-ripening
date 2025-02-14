package net.bnijik.schoolScheduler;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.enums.SecuritySchemeIn;
import io.swagger.v3.oas.annotations.enums.SecuritySchemeType;
import io.swagger.v3.oas.annotations.info.Info;
import io.swagger.v3.oas.annotations.security.SecurityScheme;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@OpenAPIDefinition(info = @Info(title = "University Scheduler REST API", version = "0.0.1", description = "Manage course scheduling and registration for a university"))
@SecurityScheme(name = "scheduler-users", scheme = "basic", type = SecuritySchemeType.HTTP, in = SecuritySchemeIn.HEADER)
public class SchoolScheduleManager {

    public static void main(String[] args) {
        SpringApplication.run(SchoolScheduleManager.class, args);
    }
}
