package com.lifeccp.task.quartz;

import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.stereotype.Component;

/**
 * Created by Star on 2015/9/18.
 */
@Component
@ConfigurationProperties(prefix = "spring.task")
public class TaskProperties {
    private String cronExpression;

    public String getCronExpression() {
        return cronExpression;
    }

    public void setCronExpression(String cronExpression) {
        this.cronExpression = cronExpression;
    }
}
