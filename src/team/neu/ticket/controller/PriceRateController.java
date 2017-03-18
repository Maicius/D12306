package team.neu.ticket.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import team.neu.ticket.User.PriceRate;
import team.neu.ticket.service.PriceRateService;

import java.util.List;

/**
 * Created by Maicius on 2017/3/18.
 */
@Controller
public class PriceRateController {
    @Autowired
    PriceRateService priceRateService;

    @RequestMapping(value="/priceRate")
    public ModelAndView queryPrcieRate(@RequestParam(value="rate_id") Integer rate_id,
                                       @RequestParam(value="ticket_class") String ticket_class,
                                       @RequestParam(value="ratio") Long ratio,
                                       @RequestParam(value="ticket_rate") Long ticket_rate) throws Exception{
        ModelAndView mv = new ModelAndView();
        PriceRate priceRate = new PriceRate(rate_id, ticket_class, ratio, ticket_rate);
        List<PriceRate> priceRates = priceRateService.doQueryPriceRate(priceRate);
        System.out.println(priceRates.toString());
        mv.addObject("priceRates",priceRates);
        mv.setViewName("ticket_rate_manager_form");
        return mv;
    }
}
