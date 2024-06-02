package net.bnijik.schoolScheduler.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.Accessors;

import java.time.OffsetDateTime;

@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Accessors(fluent = true)
@Entity
@Table(name = "schedules", indexes = {@Index(name = "room_duration_idx", columnList = "room, duration")})
public class Schedule implements Comparable<Schedule>{
    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "schedule_seq_generator")
    @SequenceGenerator(name = "schedule_seq_generator", sequenceName = "schedules_schedule_id_seq", allocationSize = 1)
    @Column(name = "schedule_id")
    private long scheduleId;

    @Column(nullable = false)
    private String room;

    @Column(name = "start_time", nullable = false)
    private OffsetDateTime startTime;

    @Column(name = "end_time", nullable = false)
    private OffsetDateTime endTime;

    @ManyToOne(fetch = FetchType.LAZY)
    private Course course;

    @Override
    public boolean equals(Object obj) {
        if (obj == this) return true;
        if (obj == null || obj.getClass() != this.getClass()) return false;
        var that = (Schedule) obj;
        return this.scheduleId == that.scheduleId;
    }

    @Override
    public int hashCode() {
        return getClass().hashCode();
    }

    @Override
    public String toString() {
        return "Schedule[" +
                "scheduleId=" + scheduleId +
                ", room=" + room +
                ", startTime=" + startTime +
                ", endTime=" + endTime +
                ']';
    }

    @Override
    public int compareTo(@NonNull Schedule o) {
        if (!this.room.equals(o.room)) {
            return this.room.compareTo(o.room);
        }
        if (this.endTime.isBefore(o.startTime)) {
            return -1;
        }
        if (this.startTime.isAfter(o.endTime)) {
            return 1;
        }
        return 0;
    }
}
