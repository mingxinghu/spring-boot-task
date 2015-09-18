package com.lifeccp.repository;

import com.lifeccp.domain.RequestProcedure;
import com.lifeccp.util.AppConstant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Created by Star on 2015/9/15.
 */
public interface RequestProcedureRepository extends JpaRepository<RequestProcedure, Integer> {
    @Query("select rp from RequestProcedure rp where rp.caseUid in (select cp.caseUid from CasePool cp where cp.action = "+ AppConstant.CASEPOOL_ACTION_NEW +")")
    List<RequestProcedure> findCaseDeviceTypes();
}
