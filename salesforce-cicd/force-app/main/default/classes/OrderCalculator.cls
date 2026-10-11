public with sharing class OrderCalculator {

    public static Decimal calculateTotal(
        Decimal price,
        Integer quantity,
        Decimal discountPercent
    ) {
        if (price == null || quantity == null ||
            discountPercent == null) {
            return 0;
        }

        Decimal subtotal = price * quantity;
        return subtotal * (100 - discountPercent) / 100;
    }
}