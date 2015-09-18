package com.lifeccp.util;

/**
 * Created by Star on 2015/9/15.
 */
public class AppConstant {

    /**
     * The constant SPECHARS_UNDERLINE.
     */
    public static final String SPECHARS_UNDERLINE = "_";

    /**
     * The constant ASSIGN_RULE_TYPE_ENTERPRISE_INSIDE.
     */
    public static final byte ASSIGN_RULE_TYPE_ENTERPRISE_OUTSIDE = 1;
    /**
     * The constant ASSIGN_RULE_TYPE_ENTERPRISE_OUTSIDE.
     */
    public static final byte ASSIGN_RULE_TYPE_ENTERPRISE_INSIDE = 2;
    /**
     * The constant ASSIGN_RULE_TYPE_HOSPITAL_INSIDE.
     */
    public static final byte ASSIGN_RULE_TYPE_HOSPITAL_INSIDE = 3;


    /**
     * CasePooL批处理标志位Action
     * 新上传。
     */
    public static final byte CASEPOOL_ACTION_NEW = 1;
    /**
     * CasePooL批处理标志位Action
     * 已处理完毕，分配到下级的pool中。
     */
    public static final byte CASEPOOL_ACTION_MATCHED = 2;
    /**
     * CasePooL批处理标志位Action
     * 处理后，没有匹配的规则。
     */
    public static final byte CASEPOOL_ACTION_UNKNOW = 3;


    /**
     * CasePoolHosptial状态位
     * 新增
     */
    public static final byte CASEPOOLHOSPITAL_STATUS_NEW = 1;
    /**
     * CasePoolHosptial状态位
     * 已处理完毕，分配到下级的pool中。
     */
    public static final byte CASEPOOLHOSPITAL_STATUS_MATCHED = 2;
    /**
     * CasePoolHosptial状态位
     * 处理后，没有匹配的规则。
     */
    public static final byte CASEPOOLHOSPITAL_STATUS_UNKNOW = 3;

    /**
     * CasePoolGroup状态位
     * 新增
     */
    public static final byte CASEPOOLGROUP_STATUS_NEW = 1;

}
