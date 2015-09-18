package com.lifeccp.repository;

import com.lifeccp.domain.AssignRule;
import com.lifeccp.util.AppConstant;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Created by Star on 2015/9/15.
 */
public interface AssignRuleRepository extends JpaRepository<AssignRule, Integer> {

    List<AssignRule> findByEnabled(Boolean enabled);

    @Query("select ar from AssignRule ar where ar.enabled = 1 and (ar.ruleType = " + AppConstant.ASSIGN_RULE_TYPE_ENTERPRISE_OUTSIDE + " or ar.ruleType = " + AppConstant.ASSIGN_RULE_TYPE_ENTERPRISE_INSIDE + ") ")
    List<AssignRule> findOutsideHospitalRules();

    @Query("select ar from AssignRule ar where ar.enabled = 1 and ar.ruleType = " + AppConstant.ASSIGN_RULE_TYPE_ENTERPRISE_OUTSIDE)
    List<AssignRule> findInsideHospitalRules();
}
