package team.neu.ticket.mapper;

import team.neu.ticket.User.PriceRate;

import java.util.List;

/**
 * Created by Maicius on 2017/3/18.
 */
public interface PriceRateMapper {
    List<PriceRate> doQueryPriceRate(PriceRate priceRate);

}
