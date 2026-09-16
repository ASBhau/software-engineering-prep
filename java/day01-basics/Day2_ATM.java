import java.util.Scanner;
public class Day2_ATM {
    public static void main(String[] args){
        System.out.println("ATM Machine");
        System.out.println("1. Check Balance");
        System.out.println("2. Deposit");
        System.out.println("3. Withdraw");
        System.out.println("4. Exit");
        int balance = 10000;
        Scanner sc = new Scanner(System.in);
        System.out.println("Enter your Choice: ");
        int choice = sc.nextInt();
        while(choice!=4){
            if(choice==1){
                System.out.println("Current Balance: Rs "+ balance);
            } else if (choice==2) {
                int deposit = sc.nextInt();
                System.out.println("Enter deposit amount: Rs ");
                balance+= deposit;
                System.out.println("Deposit successful.");
                System.out.println("Current Balance: Rs " + balance);
            } else if (choice==3) {
                int withdraw = sc.nextInt();
                System.out.println("Enter withdraw amount: Rs ");
                if(balance - withdraw>=0){
                    balance-= withdraw;
                    System.out.println("Withdrawal successful.");
                    System.out.println("Current Balance: Rs " + balance);
                }
                else{
                    System.out.println("Insufficient balance.");
                }
            } else if (choice==4) {
                System.out.println("Thank you for using the ATM.");
                break;
            }
            else{
                System.out.println("Invalid Choice");
            }
        }


    }
}
