public class Test {
    private static float calculateMonthlyPayment(float borrowedAmount, float interestRate, float loadTerm,
            boolean includeTaxes) {
        float j = interestRate / 1200;
        System.out.println(Math.pow((1 + j), (-1 * loadTerm * 12)));
        float payment = (float) (j / (1 - Math.pow((1 + j), (-1 * loadTerm * 12))) * borrowedAmount);

        return includeTaxes ? (float) (payment + 0.01 * borrowedAmount) : payment;
    }

    public static void main(String[] args) {
        System.out.println(calculateMonthlyPayment(200000, 10, 15, true));
    }
}
