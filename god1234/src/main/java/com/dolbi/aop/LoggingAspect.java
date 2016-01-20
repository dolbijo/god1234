package com.dolbi.aop;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

@Aspect
@Component("loggingAspect")
public class LoggingAspect {

	@Pointcut("within(*..*Controller) || within(*..*Dao)")
	public void controllerOrDaoPointcut(){}
	
	@Around("controllerOrDaoPointcut()")
	public Object logLapTime(ProceedingJoinPoint joinPoint) {
		String className = joinPoint.getTarget().getClass().getSimpleName();
		String methodName = joinPoint.getSignature().getName();
		
		long start = System.nanoTime();//1. Before
		Object returnValue = null;
		try {		
			returnValue = joinPoint.proceed();//2. Execution
		} catch (Throwable ex) {}
		
		long stop = System.nanoTime(); //3. After
		System.out.println(
			String.format("Execution Time of %s.%s : %d", className, methodName, stop - start));
		
		return returnValue;
	}
	
}
