 public with sharing class {{class_name}}TriggerHandler {
	private boolean m_isExecuting = false;
	private integer BatchSize = 0;
	
	public {{class_name}}TriggerHandler(boolean isExecuting, integer size){
		m_isExecuting = isExecuting;
		BatchSize = size;
	}
	
	public void OnBeforeInsert({{object_name}}[] newRecords){
		//Example usage
		for({{object_name}} newRecord : newRecords){
			//if(newAccount.AnnualRevenue == null){
			//	newAccount.AnnualRevenue.addError('Missing annual revenue');
			//}
		}
	}
	
	public void OnAfterInsert({{object_name}}[] newRecords){
		
	}
	
	@future public static void OnAfterInsertAsync(Set<ID> newRecordIDs){
		//Example usage
		//List<{{object_name}}> newRecords = [select Id, Name from {{object_name}} where Id IN :newRecordIDs];
	}
	
	public void OnBeforeUpdate({{object_name}}[] oldRecords, {{object_name}}[] updatedRecords, Map<ID, {{object_name}}> recordMap){
		//Example Map usage
		//Map<ID, Contact> contacts = new Map<ID, Contact>( [select Id, FirstName, LastName, Email from Contact where AccountId IN :recordMap.keySet()] );
	}
	
	public void OnAfterUpdate({{object_name}}[] oldRecords, {{object_name}}[] updatedRecords, Map<ID, {{object_name}}> recordMap){
		
	}
	
	@future public static void OnAfterUpdateAsync(Set<ID> updatedRecordIDs){
		//List<{{object_name}}> updatedRecords = [select Id, Name from {{object_name}} where Id IN :updatedRecordIDs];
	}
	
	public void OnBeforeDelete({{object_name}}[] recordsToDelete, Map<ID, {{object_name}}> recordMap){
		
	}
	
	public void OnAfterDelete({{object_name}}[] deletedRecords, Map<ID, {{object_name}}> recordMap){
		
	}
	
	@future public static void OnAfterDeleteAsync(Set<ID> deletedRecordIDs){
		
	}
	
	public void OnUndelete({{object_name}}[] restoredRecords){
		
	}
	
	public boolean IsTriggerContext{
		get{ return m_isExecuting;}
	}
	
	public boolean IsVisualforcePageContext{
		get{ return !IsTriggerContext;}
	}
	
	public boolean IsWebServiceContext{
		get{ return !IsTriggerContext;}
	}
	
	public boolean IsExecuteAnonymousContext{
		get{ return !IsTriggerContext;}
	}
}