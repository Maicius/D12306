package team.neu.ticket.User;

/**
 * Created by Maicius on 2017/3/18.
 */
public class PriceRate {
    private Integer rate_id;
    private String ticket_class;
    private Long ratio;
    private Long ticket_rate;

    public PriceRate(){

    }
    public PriceRate(Integer rate_id, String ticket_class, Long ratio, Long ticket_rate){
        this.rate_id = rate_id;
        this.ticket_class = ticket_class;
        this.ratio = ratio;
        this.ticket_rate = ticket_rate;
    }
    public Integer getRate_id() {
        return rate_id;
    }

    public void setRate_id(Integer rate_id) {
        this.rate_id = rate_id;
    }

    public String getTicket_class() {
        return ticket_class;
    }

    public void setTicket_class(String ticket_class) {
        this.ticket_class = ticket_class;
    }

    public Long getRatio() {
        return ratio;
    }

    public void setRatio(Long ratio) {
        this.ratio = ratio;
    }

    public Long getTicket_rate() {
        return ticket_rate;
    }

    public void setTicket_rate(Long ticket_rate) {
        this.ticket_rate = ticket_rate;
    }
}
