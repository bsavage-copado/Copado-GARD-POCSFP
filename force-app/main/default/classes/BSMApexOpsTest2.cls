@IsTest
private class BSMApexOpsTest2 {
    @isTest static void setDefaultDescription(){
        Account acc = new Account(Name = 'My Test Account',Description='Default description');
        insert acc;
        acc = BSMApexOps.setDefaultDescription(acc);
        System.assertEquals('Default description', acc.Description);
    }
}