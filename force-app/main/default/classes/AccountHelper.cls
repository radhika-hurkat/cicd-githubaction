public with sharing class AccountHelper {
    
    // Method to create a new Account
    public static Account createAccount(String accName) {
        Account newAcc = new Account(
            Name = accName
        );
        insert newAcc;
        return newAcc;
    }

    // Method to get all accounts
    public static List<Account> getAllAccounts() {
        return [SELECT Id, Name FROM Account LIMIT 50];
    }
}
