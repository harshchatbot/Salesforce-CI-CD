public with sharing class CICDPracticeService {

    public static Integer calculateDiscount(
        Integer price,
        Integer discountPercentage
    ) {
        if (price == null || discountPercentage == null) {
            return 0;
        }

        return price - (price * discountPercentage / 100);
    }
}