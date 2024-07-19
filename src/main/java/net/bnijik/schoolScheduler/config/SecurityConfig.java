package net.bnijik.schoolScheduler.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.password.NoOpPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableWebSecurity(debug = true)
public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity httpSecurity) throws Exception {
        httpSecurity.csrf(csrf -> csrf.ignoringRequestMatchers("/api/**"))
                .authorizeHttpRequests(auth -> auth.requestMatchers(HttpMethod.GET ,"/api/students")
                        .hasAnyRole("STUDENT", "ADMIN")
                        .requestMatchers(HttpMethod.GET ,"/api/professors")
                        .hasAnyRole("TEACHER", "ADMIN")
                        .requestMatchers("/api/**")
                        .hasRole("ADMIN")
                        .anyRequest()
                        .authenticated())
                .httpBasic(Customizer.withDefaults());
        return httpSecurity.build();
    }

    @Bean
    public PasswordEncoder passwordEncoder() {
        return NoOpPasswordEncoder.getInstance();
    }

    @Bean
    public UserDetailsService userDetailsService(PasswordEncoder passwordEncoder) {
        final User.UserBuilder pwdEncoderConfiguredUsrBuilder = User.builder().passwordEncoder(passwordEncoder::encode);
        final UserDetails student = pwdEncoderConfiguredUsrBuilder.username("stud1")
                .password(passwordEncoder.encode("pwd1"))
                .roles("STUDENT")
                .build();
        final UserDetails professor = pwdEncoderConfiguredUsrBuilder.username("prof1")
                .password(passwordEncoder.encode("pwd2"))
                .roles("TEACHER")
                .build();
        final UserDetails admin = pwdEncoderConfiguredUsrBuilder.username("admin")
                .password(passwordEncoder.encode("pwd3"))
                .roles("ADMIN")
                .build();

        return new InMemoryUserDetailsManager(student, professor, admin);
    }
}
