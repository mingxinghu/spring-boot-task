package com.lifeccp.exception;

import com.lifeccp.util.AppErrorCode;

/**
 * Created by Star on 2015/9/15.
 */
public class RuleNotExistException extends Exception implements CustomException {

    private static final int code = AppErrorCode.CODE_RULE_NOT_EXIST;

    public RuleNotExistException() {
        super();
    }

    public RuleNotExistException(String message) {
        super(message);
    }

    public RuleNotExistException(String message, Throwable cause) {
        super(message, cause);
    }

    @Override
    public int getCode() {
        return code;
    }
}
