package com.signup.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import com.signup.dto.MemberForm;
import com.signup.entity.Member;
import com.signup.service.MemberService;

@Controller
public class MemberController {
	
	private final MemberService memberService;
	
	@Autowired
	public MemberController(MemberService memberService) {
		this.memberService = memberService;
	}
	
	@GetMapping("/members/new")
	public String join() {
		return "joinForm";
	}
	
	@PostMapping("/members/new")
	public String join(MemberForm form) {
		Member member = new Member();
		member.setName(form.getName());
		member.setUsername(form.getUsername());
		member.setPassword(form.getPassword());
		memberService.join(member);
		return "redirect:/";
	}
	
	@GetMapping("/members")
	public String list(Model model) {
		List<Member> members = memberService.findMembers();
		model.addAttribute("members", members);
		return "memberList";
	}
}
