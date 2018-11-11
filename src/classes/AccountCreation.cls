<<<<<<< HEAD
=======
//Added comment before commit3
//slave2
//for cherry pick 2
//Checking from GitHub
//commit from local
//checking from github again
>>>>>>> branch 'working' of https://github.com/RajagopalAkella/RajRepo2.git
public class AccountCreation {
    public set<string> fetchAccPhone(string s){
        list<string> p1 = new list<string>();
        p1.add(s);
        list<account> la = [select Id, Name, Phone from Account where Phone = :s];
        set<string> s1 = new set<string>();
        for (Account a:la){
          s1.add(a.name);                
        }        
        return s1;
    }
    public Account InsertAccount(string acName, string acPhone){
        list<Account> la = [select Id, Name from Account where Name = :acName];
        if (la.size() != 0 ){
            system.debug('Account already exists.');
            return null;
        }
        Account a = new Account();
        a.Name = acName;
        a.Phone = acPhone;
        insert a;
        return a;
    }
}