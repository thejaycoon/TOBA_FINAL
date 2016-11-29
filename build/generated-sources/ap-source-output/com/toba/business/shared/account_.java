package com.toba.business.shared;

import com.toba.business.shared.User;
import com.toba.business.transactions.transaction;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2016-11-22T18:51:30")
@StaticMetamodel(account.class)
public class account_ { 

    public static volatile SingularAttribute<account, Long> accountID;
    public static volatile SingularAttribute<account, String> accountType;
    public static volatile SingularAttribute<account, Double> startingBal;
    public static volatile SingularAttribute<account, User> me;
    public static volatile ListAttribute<account, transaction> transactions;

}