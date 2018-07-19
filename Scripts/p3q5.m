function [kl_1 kl_2 kl_3] = p3q5()
    rng default  % for reproducibility
    x = [randn(30,1); 5+randn(30,1)];
    h = hist(x,20);
    h_1 = normpdf(h/2,mean(h/2),cov(h/2));
    %h = histogram(x,20,'Normalization','probability');
    %h_1 = h.Values;
    %h_1(find(h_1==0)) = 1;
    [f_1,x_1,bw_1] = ksdensity(x);
    [f_2,x_2,bw_2] = ksdensity(x,'Bandwidth',bw_1/2);
    [m_1,xm_1] = ksdensity(x,'NumPoints',20);
    [m_2,xm_2] = ksdensity(x,'NumPoints',100);
    m_1 = m_1 ./repmat(sum(m_1,2),[1 size(m_1,2)]);
    h_1 = h_1 ./repmat(sum(h_1,2),[1 size(h_1,2)]);
    temp =  m_1.*log(m_1./h_1);
    temp(isnan(temp)) = 0;
    kl_1 = sum(temp,2);
    m_2 = m_2 ./repmat(sum(m_2,2),[1 size(m_2,2)]);
    f_1 = f_1 ./repmat(sum(f_1,2),[1 size(f_1,2)]);
    temp =  m_2.*log(m_2./f_1);
    temp(isnan(temp)) = 0;
    kl_2 = sum(temp,2);
    f_2 = f_2 ./repmat(sum(f_2,2),[1 size(f_2,2)]);
    temp =  m_2.*log(m_2./f_2);
    temp(isnan(temp)) = 0;
    kl_3 = sum(temp,2);
    
    %kl_1 = sum((m_1.*(log(m_1./h_1)))+(1-m_1.*(log(1-m_1./1-h_1))));
    %kl_2 = sum((m_2.*(log(m_2./f_1)))+(1-m_2.*(log(1-m_2./1-f_1))));
    %kl_3 = sum((m_2.*(log(m_2./f_2)))+(1-m_2.*(log(1-m_2./1-f_2))));
    %kl_1 = sum(h_1.*(log(h_1./m_1)));
    %kl_2 = sum(f_1.*(log(f_1./m_2)));
    %kl_3 = sum(f_2.*(log(f_2./m_2)));
end
