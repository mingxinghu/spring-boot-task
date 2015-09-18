package com.lifeccp.repository;

import com.lifeccp.domain.CasePool;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Created by Star on 2015/9/14.
 */
public interface CasePoolRepository  extends JpaRepository<CasePool, Integer> {

    @Query("select cp from CasePool cp where cp.title =?1")
    CasePool findByTitleIgnoringCase(String title);

    List<CasePool> findByAction(byte action);

}
