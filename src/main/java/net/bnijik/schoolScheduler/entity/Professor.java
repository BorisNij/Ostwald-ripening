package net.bnijik.schoolScheduler.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.Accessors;

import java.util.SortedSet;
import java.util.TreeSet;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Accessors(fluent = true)
@Builder
@Entity
@Table(name = "professors")
public class Professor {
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "professor_seq_generator")
    @SequenceGenerator(name = "professor_seq_generator", sequenceName = "professors_professor_id_seq", allocationSize = 1)
    @Column(name = "professor_id", updatable = false, nullable = false)
    private long professorId;
    @NonNull
    @Column(name = "first_name", nullable = false)
    private String firstName;
    @NonNull
    @Column(name = "last_name", nullable = false)
    private String lastName;
    @ManyToMany(cascade = {CascadeType.MERGE, CascadeType.PERSIST})
    @JoinTable(name = "professor_course", joinColumns = @JoinColumn(name = "professor_id"), inverseJoinColumns = @JoinColumn(name = "course_id"))
    @Builder.Default
    private SortedSet<Course> taughtCourses = new TreeSet<>();

    @Override
    public boolean equals(Object obj) {
        if (obj == this) return true;
        if (obj == null || obj.getClass() != this.getClass()) return false;
        var that = (Professor) obj;
        return this.professorId == that.professorId;
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }

    @Override
    public String toString() {
        return "Professor[" +
                "professorId=" + professorId + ", " +
                "firstName=" + firstName + ", " +
                "lastName=" + lastName + ']';
    }
}
