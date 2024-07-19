package net.bnijik.schoolScheduler.controller.rest.professor;

import net.bnijik.schoolScheduler.config.SecurityConfig;
import net.bnijik.schoolScheduler.controller.rest.ProfessorController;
import net.bnijik.schoolScheduler.service.professor.ProfessorService;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;

import static net.bnijik.schoolScheduler.controller.rest.course.StudentControllerSecurityTest.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;

@WebMvcTest(controllers = ProfessorController.class)
@Import(SecurityConfig.class)
class ProfessorControllerSecurityTest {

    private static final String PATH = "/api/professors";
    @MockBean
    private ProfessorService professorService;
    @Autowired
    private MockMvc mockMvc;

    @Test
    @DisplayName("when getting professors unauthenticated should return Unauthorized")
    void whenGettingProfessorsUnauthenticatedShouldReturnUnauthorized() throws Exception {

        asserUnauthorized(mockMvc.perform(get(PATH)));
    }

    @Nested
    @WithMockUser(username = "professor", roles = {"TEACHER"})
    public class AuthenticatedProfessorTest {


        @Test
        @DisplayName("when professor creates new professor should return Forbidden")
        void whenProfessorCreatesNewProfessorShouldReturnUnauthorized() throws Exception {
            assertForbidden(mockMvc.perform(post(PATH)));
        }

        @Test
        @DisplayName("when professor updates professor details should return Forbidden")
        void whenProfessorUpdatesProfessorDetailsShouldReturnUnauthorized() throws Exception {
            assertForbidden(mockMvc.perform(put(PATH)));
        }

        @Test
        @DisplayName("when professor deletes professor should return Forbidden")
        void whenProfessorDeletesProfessorShouldReturnUnauthorized() throws Exception {
            assertForbidden(mockMvc.perform(delete(PATH)));
        }

        @Test
        @DisplayName("when professor gets professors should not return Unauthorized nor Forbidden")
        void whenProfessorGetsProfessorsShouldNotReturnUnauthorizedNorForbidden() throws Exception {
            assertNotUnauthorizedNorForbidden(mockMvc.perform(get(PATH)));

        }

    }


    @Nested
    @WithMockUser(username = "admin", roles = {"ADMIN"})
    public class AuthenticatedAdminTest {

        @Test
        @DisplayName("when admin creates new professor should not return Unauthorized nor Forbidden")
        void whenAdminCreatesNewProfessorShouldNotReturnUnauthorizedNorForbidden() throws Exception {
            assertNotUnauthorizedNorForbidden(mockMvc.perform(post(PATH)));
        }

        @Test
        @DisplayName("when admin updates professor details should not return Unauthorized nor Forbidden")
        void whenAdminUpdatesProfessorDetailsShouldNotReturnUnauthorizedNorForbidden() throws Exception {
            assertNotUnauthorizedNorForbidden(mockMvc.perform(put(PATH)));
        }

        @Test
        @DisplayName("when admin deletes professor should not return Unauthorized nor Forbidden")
        void whenAdminDeletesProfessorShouldReturnNotReturnUnauthorizedNorForbidden() throws Exception {
            assertNotUnauthorizedNorForbidden(mockMvc.perform(delete(PATH)));
        }

        @Test
        @DisplayName("when admin gets professors should not return Unauthorized nor Forbidden")
        void whenAdminGetsProfessorsShouldNotReturnNotReturnUnauthorizedNorForbidden() throws Exception {
            assertNotUnauthorizedNorForbidden(mockMvc.perform(get(PATH)));
        }


    }
}