@IsTest
private class CICDPracticeServiceTest {

    @IsTest
    static void testValidDiscount() {
        Integer result = CICDPracticeService.calculateDiscount(1000, 10);
        System.assertEquals(900, result, '10% discount should return 900');
    }

    @IsTest
    static void testNullInput() {
        Integer result = CICDPracticeService.calculateDiscount(null, 10);
        System.assertEquals(0, result, 'Null price should return zero');
    }

    @IsTest
    static void testZeroDiscount() {
        Integer result = CICDPracticeService.calculateDiscount(1000, 0);
        System.assertEquals(1000, result, 'Zero discount should retain original price');
    }
}