@IsTest
private class OrderCalculatorTest {

    @IsTest
    static void testDiscount() {
        Decimal result = OrderCalculator.calculateTotal(100, 2, 10);

        System.assertEquals(
            180,
            result,
            '10% discount on 200 should return 180'
        );
    }

    @IsTest
    static void testNullInput() {
        Decimal result = OrderCalculator.calculateTotal(null, 2, 10);

        System.assertEquals(
            0,
            result,
            'Null price should return zero'
        );
    }

    @IsTest
    static void testNoDiscount() {
        Decimal result = OrderCalculator.calculateTotal(100, 2, 0);

        System.assertEquals(
            200,
            result,
            'Zero discount should return full amount'
        );
    }
}