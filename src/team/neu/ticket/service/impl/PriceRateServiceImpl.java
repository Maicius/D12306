package team.neu.ticket.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import team.neu.ticket.User.PriceRate;
import team.neu.ticket.mapper.PriceRateMapper;
import team.neu.ticket.service.PriceRateService;

import java.util.List;

/**
 * Created by Maicius on 2017/3/18.
 */
public class PriceRateServiceImpl implements PriceRateService {

    @Autowired
    PriceRateMapper priceRateMapper;
    @Override
    public List<PriceRate> doQueryPriceRate(PriceRate priceRate) throws Exception {
        return priceRateMapper.doQueryPriceRate(priceRate);
    }

}
