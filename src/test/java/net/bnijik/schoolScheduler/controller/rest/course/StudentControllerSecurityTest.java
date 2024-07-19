package net.bnijik.schoolScheduler.controller.rest.course;

import net.bnijik.schoolScheduler.config.SecurityConfig;
import net.bnijik.schoolScheduler.controller.rest.StudentController;
import net.bnijik.schoolScheduler.service.student.StudentService;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Nested;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.context.annotation.Import;
import org.springframework.http.HttpStatus;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.ResultActions;

import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.*;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@WebMvcTest(controllers = StudentController.class)
@Import(SecurityConfig.class)
public class StudentControllerSecurityTest {

    private static final String PATH = "/api/students";
    @MockBean
    private StudentService studentService;
    @Autowired
    private MockMvc mockMvc;

    public static void assertNotUnauthorized(ResultActions resultActions) throws Exception {
        resultActions.andExpect(result -> assertNotEquals(HttpStatus.UNAUTHORIZED.value(),
                                                          result.getResponse().getStatus()));
    }

    public static void assertNotForbidden(ResultActions resultActions) throws Exception {
        resultActions.andExpect(result -> assertNotEquals(HttpStatus.FORBIDDEN.value(),
                                                          result.getResponse().getStatus()));
    }

    public static void assertNotUnauthorizedNorForbidden(ResultActions resultActions) throws Exception {
        assertNotForbidden(resultActions);
        assertNotUnauthorized(resultActions);
    }

    public static void assertForbidden(ResultActions resultActions) throws Exception {
        resultActions.andExpect(status().isForbidden());
    }

    public static void asserUnauthorized(ResultActions resultActions) throws Exception {
        resultActions.andExpect(status().isUnauthorized());
    }

    @Test
    @DisplayName("when getting students unauthenticated should return Unauthorized")
    void whenGettingStudentsUnauthenticatedShouldReturnUnauthorized() throws Exception {

        asserUnauthorized(mockMvc.perform(get(PATH)));
    }

    @Nested
    @WithMockUser(username = "student", roles = {"STUDENT"})
    public class AuthenticatedStudentTest {


        @Test
        @DisplayName("when student creates new student should return Forbidden")
        void whenStudentCreatesNewStudentShouldReturnUnauthorized() throws Exception {
            assertForbidden(mockMvc.perform(post(PATH)));
        }

        @Test
        @DisplayName("when student updates student details should return Forbidden")
        void whenStudentUpdatesStudentDetailsShouldReturnUnauthorized() throws Exception {
            assertForbidden(mockMvc.perform(put(PATH)));
        }

        @Test
        @DisplayName("when student deletes student should return Forbidden")
        void whenStudentDeletesStudentShouldReturnUnauthorized() throws Exception {
            assertForbidden(mockMvc.perform(delete(PATH)));
        }

        @Test
        @DisplayName("when student gets students should not return Unauthorized nor Forbidden")
        void whenStudentGetsStudentsShouldNotReturnUnauthorizedNorForbidden() throws Exception {
            assertNotUnauthorizedNorForbidden(mockMvc.perform(get(PATH)));

        }

    }

    @Nested
    @WithMockUser(username = "admin", roles = {"ADMIN"})
    public class AuthenticatedAdminTest {

        @Test
        @DisplayName("when admin creates new student should not return Unauthorized nor Forbidden")
        void whenAdminCreatesNewStudentShouldNotReturnUnauthorizedNorForbidden() throws Exception {
            assertNotUnauthorizedNorForbidden(mockMvc.perform(post(PATH)));
        }

        @Test
        @DisplayName("when admin updates student details should not return Unauthorized nor Forbidden")
        void whenAdminUpdatesStudentDetailsShouldNotReturnUnauthorizedNorForbidden() throws Exception {
            assertNotUnauthorizedNorForbidden(mockMvc.perform(put(PATH)));
        }

        @Test
        @DisplayName("when admin deletes student should not return Unauthorized nor Forbidden")
        void whenAdminDeletesStudentShouldReturnNotReturnUnauthorizedNorForbidden() throws Exception {
            assertNotUnauthorizedNorForbidden(mockMvc.perform(delete(PATH)));
        }

        @Test
        @DisplayName("when admin gets students should not return Unauthorized nor Forbidden")
        void whenAdminGetsStudentsShouldNotReturnNotReturnUnauthorizedNorForbidden() throws Exception {
            assertNotUnauthorizedNorForbidden(mockMvc.perform(get(PATH)));
        }


    }

}
