package com.dolbi.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

@Aspect
@Component("transactionAspect")
public class TransactionAspect {
	
	@Autowired
	@Qualifier("txTemplate")
	private TransactionTemplate txTemplate;	

	@Pointcut("execution(* *..*.*Tx(..))")
	public void transactionPointcut() {}	
	
	@Around("transactionPointcut()")
	public Object doInTransaction(ProceedingJoinPoint joinPoint) {
		
		PlatformTransactionManager txManager = txTemplate.getTransactionManager();
		TransactionStatus txStatus = txManager.getTransaction(new DefaultTransactionDefinition());
		
		Object result = null;
		try {
			result = joinPoint.proceed();
			txManager.commit(txStatus);
		} catch (Throwable t) {
			t.printStackTrace();
			result = t.getMessage();
			txManager.rollback(txStatus);
		}
				
		return result;
	}
	
}







