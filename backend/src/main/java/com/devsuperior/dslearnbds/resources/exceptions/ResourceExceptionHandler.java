package com.devsuperior.dslearnbds.resources.exceptions;

import java.time.Instant;

import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

import com.devsuperior.dslearnbds.services.exceptions.DataBaseException;
import com.devsuperior.dslearnbds.services.exceptions.ResourceNotFoundException;

@ControllerAdvice
public class ResourceExceptionHandler {

	
	@ExceptionHandler(ResourceNotFoundException.class)
	public ResponseEntity<StandartError> entityNotFound(ResourceNotFoundException e, HttpServletRequest request){
		StandartError err = new StandartError();
		HttpStatus status = HttpStatus.NOT_FOUND;
		err.setTimestamp(Instant.now());
		err.setStatus(status.value());
		err.setError("Resource not found!");
		err.setMessage(e.getMessage());
		err.setPath(request.getRequestURI());
		return ResponseEntity.status(status).body(err);
	}
	
	@ExceptionHandler(DataBaseException.class)
	public ResponseEntity<StandartError> database(DataBaseException e, HttpServletRequest request){
		StandartError err = new StandartError();
		HttpStatus status = HttpStatus.BAD_REQUEST;
		err.setTimestamp(Instant.now());
		err.setStatus(status.value());
		err.setError("DataBase exception!");
		err.setMessage(e.getMessage());
		err.setPath(request.getRequestURI());
		return ResponseEntity.status(status).body(err);
		
	}
	
	@ExceptionHandler(MethodArgumentNotValidException.class)
	public ResponseEntity<StandartError> validation(MethodArgumentNotValidException e , HttpServletRequest request){
		ValidationError err = new ValidationError();
		HttpStatus status = HttpStatus.UNPROCESSABLE_ENTITY;
		err.setMessage(e.getMessage());
		err.setTimestamp(Instant.now());
		err.setError("Validation exception!");
		err.setStatus(status.value());
		for(FieldError fe : e.getBindingResult().getFieldErrors()) {
			err.addError(fe.getField(),fe.getDefaultMessage());
		}
		err.setPath(request.getRequestURI());
		return ResponseEntity.status(status).body(err);
	}
}
