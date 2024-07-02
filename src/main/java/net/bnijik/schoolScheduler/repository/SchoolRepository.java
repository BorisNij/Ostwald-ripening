package net.bnijik.schoolScheduler.repository;

import net.bnijik.schoolScheduler.repository.hibernate.HibernateRepository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.NoRepositoryBean;

import java.util.Optional;
import java.util.UUID;


@NoRepositoryBean
public interface SchoolRepository<M> extends HibernateRepository<M>, JpaRepository<M, Long> {

    Optional<M> findByGuid(UUID guid);

}
