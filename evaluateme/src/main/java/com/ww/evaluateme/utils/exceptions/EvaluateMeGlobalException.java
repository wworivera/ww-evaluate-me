package com.ww.evaluateme.utils.exceptions;

import java.util.List;

import com.ww.evaluateme.models.ErrorCodes;

public class EvaluateMeGlobalException extends RuntimeException
{
	private static final long serialVersionUID = -5430182206137994785L;

	private List<ErrorCodes> errorCodes;

	public List<ErrorCodes> getErrorCodes() {
		return errorCodes;
	}
	public void setErrorCodes(List<ErrorCodes> errorCodes) {
		this.errorCodes = errorCodes;
	}
	
	public EvaluateMeGlobalException(List<ErrorCodes> errorCodes)
	{
		this.errorCodes = errorCodes;
	}
}
