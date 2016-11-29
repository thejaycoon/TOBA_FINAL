package com.toba.business.transactions;

import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-11-22T18:51:30")
@StaticMetamodel(transaction.class)
public class transaction_ { 

    public static volatile SingularAttribute<transaction, Double> finalBalance;
    public static volatile SingularAttribute<transaction, String> function;
    public static volatile SingularAttribute<transaction, Double> startingBal;
    public static volatile SingularAttribute<transaction, Double> amountTransferred;
    public static volatile SingularAttribute<transaction, Long> transactionID;

}