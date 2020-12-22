public  class setTrueInFieldAccount {
		public List<Account> account { get; set; }
		public String name { get; set; }
		public void  searchAccount(){
				account = [SELECT Name,setTrue__c FROM Account WHERE Name=:name];
			if(account.size()>0){
					for(Account a :account){
						a.setTrue__c = 'true';
						update account;
					ApexPages.addmessage(new ApexPages.message(ApexPages.severity.CONFIRM,'Update Successfully!'));
				}
			}else{
					ApexPages.addmessage(new ApexPages.message(ApexPages.severity.ERROR,'This account was not found!')); 
			}
				name= '';
		}
}
