package com.coder.garibkabank.controller;


import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.hibernate.Session;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.coder.garibkabank.dto.LoginDto;
import com.coder.garibkabank.dto.RegistionDto;
import com.coder.garibkabank.dto.TransactionsDto;
import com.coder.garibkabank.model.service.CheckSesstionService;
import com.coder.garibkabank.model.service.DepositCreditService;
import com.coder.garibkabank.model.service.LoginService;
import com.coder.garibkabank.model.service.RegistionService;
import com.coder.garibkabank.model.service.StatementService;
import com.coder.garibkabank.model.service.UpdateBlanceService;

@Controller
public class RegistionLoginControler {
	
	@Autowired
	private RegistionService registionService;
	
	@Autowired
	private LoginService loginService;
	
	@Autowired
	private DepositCreditService depositCreditService; 
	
	@Autowired
	private UpdateBlanceService updateBlanceService;
	
	@Autowired
	private StatementService statementService;
	
	@Autowired
	private CheckSesstionService checkSesstionService;
		
	/*@RequestMapping("/Deposit")
	public ModelAndView depositForm() {
		return new ModelAndView("Deposit");
	}
	*/
	/*@RequestMapping("/creditform")
	public ModelAndView creditForm() {
		return new ModelAndView("Credit");
	}
	*/
	@RequestMapping(value="/update")
	public ModelAndView aboutForm() {
		return new ModelAndView("update");
	}
	
	@PostMapping(value="/registion")
	public ModelAndView registion(RegistionDto dto) {
		registionService.registionService(dto);
		return new  ModelAndView("login","responsMsg","Sccusefully Registerd");
	}
	
	
	@PostMapping(value="/login")
	public ModelAndView login(LoginDto loginDto , HttpServletRequest request) {
		RegistionDto registionDto = loginService.getUserIdAndPassword(loginDto);
		if(registionDto!=null) {
			HttpSession httpSession = request.getSession();
			httpSession.setAttribute("registration",registionDto );
			return new ModelAndView("update","responseMsg",registionDto); 
		}
		return new ModelAndView("login","responseMsg","userName and Password invallid");
	}
	
	@PostMapping(value="/deposit")
	public ModelAndView deposit(TransactionsDto transactionsDto,HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		RegistionDto registionDto = (RegistionDto) session.getAttribute("registration");
		registionDto.setBalance(registionDto.getBalance()-transactionsDto.getDebitamount());
		updateBlanceService.updateCridetBlance(registionDto.getAccNumber(), registionDto.getBalance());
		transactionsDto.setRegistionDto(registionDto);
		transactionsDto.setBalance(registionDto.getBalance());
		depositCreditService.deposit(transactionsDto);
		request.setAttribute("registration",registionDto );
		return new ModelAndView("update","responseMsg",registionDto);
	}
	
	@PostMapping(value="/credit")
	public ModelAndView credit(TransactionsDto transactionsDto,HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		RegistionDto registionDto = (RegistionDto) session.getAttribute("registration");
		registionDto.setBalance(registionDto.getBalance()+transactionsDto.getCredit());
		updateBlanceService.updateCridetBlance(registionDto.getAccNumber(), registionDto.getBalance());
		transactionsDto.setRegistionDto(registionDto);
		transactionsDto.setBalance(registionDto.getBalance());
		depositCreditService.deposit(transactionsDto);
		request.setAttribute("registration",registionDto );
		return new ModelAndView("update","responseMsg",registionDto);
	}
	
	
	@PostMapping(value="/statement")
	public ModelAndView statment(HttpServletRequest request) {
		
		 List<TransactionsDto> tr=null;
		 HttpSession httpSession = request.getSession(false);
		 RegistionDto dto  = (RegistionDto) httpSession.getAttribute("registration");
		 if(checkSesstionService.checlSesstion(dto)==false) {
			 return new ModelAndView("login");
		 }
		 else
		 {
			 List<RegistionDto> statement = statementService.getStatement(dto);
			 Iterator<RegistionDto> itr=statement.iterator();
				 RegistionDto r=itr.next();
				tr=r.getTransactionsDto();
				Iterator<TransactionsDto> itr2=tr.iterator();
				
				/*while(itr2.hasNext()) {
					TransactionsDto tra = itr2.next();
					System.out.println(tra.getRemarks());
					System.out.println(tra.getBalance());
					System.out.println(tra.getCredit());
					System.out.println(tra.getDebitamount());
					System.out.println(tra.getDate());
					System.out.println(tra.getTranid());
				}*/
			 
			 return new ModelAndView("Statemnt","responseMsg",itr2);
		 }
	}
	
	@PostMapping(value="/about")
	public ModelAndView about(RegistionDto registionDto, HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		registionDto = (RegistionDto) session.getAttribute("registration");
		 if(checkSesstionService.checlSesstion(registionDto)==false) {
			 return new ModelAndView("login");
		 }
		return new ModelAndView("update","responseMsg",registionDto);	
	}
	
	@PostMapping(value="/logout")
	public ModelAndView logOut(HttpServletRequest request) {
		HttpSession session = request.getSession(false);
		 RegistionDto registionDto= (RegistionDto) session.getAttribute("registration");
		 registionDto=null;
		 return new ModelAndView("login");
	}
	
	
}
