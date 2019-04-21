package egovframework.lotto;

import java.util.HashMap;
import java.util.Map;


import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

import egovframework.com.cop.adb.service.AdressBookVO;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

@Controller
public class LottoController {
	@RequestMapping(value="/lotto/initLotto.do")
	public String initLotto(@ModelAttribute("searchVO") AdressBookVO adbkVO,SessionStatus status, ModelMap model) throws Exception{
		System.out.println("11111111111111111111111111111111");
		return "egovframework/lotto/lotto";
	}
	
	
	
	@RequestMapping(value="/lotto/getLottoNumber.do")
	public ModelAndView getLottoNumber(HttpServletRequest request, Map<String, String> paramMap) throws Exception{
		
		JSONObject retJso = new JSONObject();
		
		retJso.put("result", "1,2,3,4,5,6");
		
		Map map = new HashMap();
		map.put("result", "1,2,3,4,5,6");
		
		return new ModelAndView("jsonView", map);
	}
}
