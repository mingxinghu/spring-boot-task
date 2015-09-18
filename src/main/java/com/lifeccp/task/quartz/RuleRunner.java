package com.lifeccp.task.quartz;

import com.lifeccp.service.RuleRunnerService;
import com.lifeccp.util.CodeGenerator;
import org.apache.log4j.Logger;
import org.quartz.Job;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.springframework.beans.factory.annotation.Autowired;

import java.text.SimpleDateFormat;
import java.util.Locale;

/**
 * Created by Star on 2015/9/18.
 */
public class RuleRunner implements Job {

    private Logger logger = Logger.getLogger(this.getClass());
    private SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.SIMPLIFIED_CHINESE);

    @Autowired
    private RuleRunnerService ruleRunnerService;

    @Override
    public void execute(JobExecutionContext context) throws JobExecutionException {
        String runnerTag = simpleDateFormat.format(System.currentTimeMillis());
        String batchNo = CodeGenerator.ShortText(runnerTag)[0];
        logger.info("rule runner[" + batchNo + "] ---> begin at " + runnerTag);
        try {
            ruleRunnerService.execute(batchNo);
        } catch (Exception e) {
            logger.error(e.getMessage(), e);
        }
        logger.info("rule runner[" + batchNo + "] ---> end at " + simpleDateFormat.format(System.currentTimeMillis()));
    }
}
