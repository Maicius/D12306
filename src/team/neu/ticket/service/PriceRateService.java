package team.neu.ticket.service;

import team.neu.ticket.User.PriceRate;

import java.util.List;

/**
 * Created by Maicius on 2017/3/18.
 */
public interface PriceRateService  {

    List<PriceRate> doQueryPriceRate(PriceRate priceRate) throws Exception;
}
