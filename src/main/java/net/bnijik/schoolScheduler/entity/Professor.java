package net.bnijik.schoolScheduler.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.Accessors;

import java.util.LinkedHashSet;
import java.util.Set;
import java.util.UUID;

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
    @Column(nullable = false, unique = true, updatable = false)
    private UUID guid;
    @NonNull
    @Column(name = "first_name", nullable = false)
    private String firstName;
    @NonNull
    @Column(name = "last_name", nullable = false)
    private String lastName;
    @ManyToMany(cascade = {CascadeType.MERGE, CascadeType.PERSIST})
    @JoinTable(name = "professor_course", joinColumns = @JoinColumn(name = "professor_id"), inverseJoinColumns = @JoinColumn(name = "course_id"))
    @Builder.Default
    private Set<Course> taughtCourses = new LinkedHashSet<>();

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

    @PrePersist
    public void prePersist() {
        if (guid == null) {
            guid = UUID.randomUUID();
        }
    }
}
