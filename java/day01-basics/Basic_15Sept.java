import java.util.Scanner;

public class Basic_15Sept {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);
        System.out.print("Name: ");
        String name = sc.nextLine();
        System.out.print("Age: ");
        int age = sc.nextInt();
        System.out.print("Account Balance: ");
        double account_balance = sc.nextDouble();

        System.out.println("Hello " + name);
        System.out.println("Age: "+ age);
        System.out.println("Balance: Rs "+account_balance);

        if(age>=18){
            System.out.println("Eligible");
        }
        else{
            System.out.println("Not eligible");
        }


    }
}
