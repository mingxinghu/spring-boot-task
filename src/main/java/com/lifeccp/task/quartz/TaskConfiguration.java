package com.lifeccp.task.quartz;

import org.quartz.spi.JobFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.condition.ConditionalOnProperty;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.scheduling.quartz.*;

/**
 * Created by Star on 2015/9/18.
 */
@Configuration
@ConditionalOnProperty(name = "spring.task.enabled")
public class TaskConfiguration {
    @Autowired
    private TaskProperties taskProperties;


    @Bean
    public SchedulerFactoryBean schedulerFactoryBean(JobFactory jobFactory) {
        SchedulerFactoryBean scheduler = new SchedulerFactoryBean();
        scheduler.setJobFactory(jobFactory);
        scheduler.setTriggers(simpleTriggerFactoryBean().getObject(), cronTriggerFactoryBean().getObject());
        return scheduler;
    }

    @Bean
    public JobFactory jobFactory(ApplicationContext applicationContext) {
        AutowiringSpringBeanJobFactory jobFactory = new AutowiringSpringBeanJobFactory();
        jobFactory.setApplicationContext(applicationContext);
        return jobFactory;
    }

    @Bean
    public MethodInvokingJobDetailFactoryBean methodInvokingJobDetailFactoryBean() {
        MethodInvokingJobDetailFactoryBean obj = new MethodInvokingJobDetailFactoryBean();
        obj.setTargetBeanName("ruleRunnerService");
        obj.setTargetMethod("run");
        return obj;
    }

    //Job  is scheduled for 3+1 times with the interval of 30 seconds
    @Bean
    public SimpleTriggerFactoryBean simpleTriggerFactoryBean(){
        SimpleTriggerFactoryBean stFactory = new SimpleTriggerFactoryBean();
        stFactory.setJobDetail(methodInvokingJobDetailFactoryBean().getObject());
        stFactory.setStartDelay(3000);
        stFactory.setRepeatInterval(30000);
        stFactory.setRepeatCount(3);
        return stFactory;
    }

    @Bean
    public JobDetailFactoryBean jobDetailFactoryBean(){
        JobDetailFactoryBean jdFactory = new JobDetailFactoryBean();
        jdFactory.setJobClass(RuleRunner.class);
        jdFactory.setName("ruleRunner");
        jdFactory.setGroup("myGroup");
        return jdFactory;
    }

    //Job is scheduled after every 30 minute
    @Bean
    public CronTriggerFactoryBean cronTriggerFactoryBean(){
        CronTriggerFactoryBean ctFactory = new CronTriggerFactoryBean();
        ctFactory.setJobDetail(jobDetailFactoryBean().getObject());
        ctFactory.setStartDelay(3000);
        ctFactory.setName("myTrigger");
        ctFactory.setGroup("myTGroup");
        ctFactory.setCronExpression(taskProperties.getCronExpression());
        return ctFactory;
    }
}
