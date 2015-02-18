@isTest
private class BeerControllerTest {
    static testMethod void myTest() {
        PagedResult result = BeerController.findAll('', 0, 1);
        System.assert(result != null);
     }
}