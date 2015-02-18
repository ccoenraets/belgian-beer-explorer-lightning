public with sharing class BeerController {

    @AuraEnabled
    public static PagedResult findAll(String searchKey, Decimal minAlcohol, Decimal pageNumber) {
        Integer pageSize = 12;
        String key = '%' + searchKey + '%';
        Integer offset = ((Integer)pageNumber - 1) * pageSize;
        
        PagedResult r =  new PagedResult();
        r.pageSize = pageSize;
        r.page = (Integer) pageNumber;
        r.total = [SELECT count() FROM Beer__c 
                      WHERE (Name LIKE :key OR Brewery__r.Name LIKE :key OR Tags__c LIKE :key)
                      AND Alcohol__c >= :minAlcohol];
        r.products = [SELECT Id, Name, Alcohol__c, Tags__c, Brewery__r.Name, Image__c FROM Beer__c 
                      WHERE (Name LIKE :key OR Brewery__r.Name LIKE :key OR Tags__c LIKE :key)
                      AND Alcohol__c >= :minAlcohol
                      ORDER BY NAME LIMIT 12 OFFSET :offset];
        System.debug(r);
        return r;
    }

}