package net.bnijik.schoolScheduler.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.Accessors;

import java.util.Collection;
import java.util.LinkedHashSet;
import java.util.Set;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Accessors(fluent = true)
@Builder
@Entity
@Table(name = "students")
public class Student {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "student_seq_generator")
    @SequenceGenerator(name = "student_seq_generator", sequenceName = "students_student_id_seq", allocationSize = 1)
    @Column(name = "student_id", updatable = false, nullable = false)
    private long studentId;
    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "group_id")
    private Group group;
    @NonNull
    @Column(name = "first_name", nullable = false)
    private String firstName;
    @NonNull
    @Column(name = "last_name", nullable = false)
    private String lastName;
    @ManyToMany(cascade = {CascadeType.MERGE, CascadeType.PERSIST})
    @JoinTable(name = "student_course",
            joinColumns = @JoinColumn(name = "student_id"),
            inverseJoinColumns = @JoinColumn(name = "course_id"))
    @Builder.Default
    private Set<Course> courses = new LinkedHashSet<>();


    public void addCourse(@NonNull final Course course) {
        courses.add(course);
        course.students().add(this);
    }

    public void removeCourse(@NonNull final Course course) {
        courses.remove(course);
        course.students().remove(this);
    }

    public void addCourses(@NonNull final Collection<Course> courses) {
        if (courses.contains(null)) {
            return;
        }

        this.courses.addAll(courses);
        courses.forEach(c -> c.students().add(this));
    }

    public void removeCourses(@NonNull final Collection<Course> courses) {
        if (courses.contains(null)) {
            return;
        }

        this.courses.removeAll(courses);
        courses.forEach(c -> c.students().remove(this));
    }


    @Override
    public boolean equals(Object obj) {
        if (obj == this) return true;
        if (obj == null || obj.getClass() != this.getClass()) return false;
        var that = (Student) obj;
        return this.studentId == that.studentId;
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }

    @Override
    public String toString() {
        return "Student[" +
                "studentId=" + studentId + ", " +
                "firstName=" + firstName + ", " +
                "lastName=" + lastName + ']';
    }

}