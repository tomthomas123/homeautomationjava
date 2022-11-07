import java.sql.*;
import java.util.Scanner;

public class home {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        int choice;
        while (true) {
            System.out.println("Enter the option below");
            System.out.println("1 .Insert the values");
            System.out.println("2 .View all values");
            System.out.println("3 .Search the values using date");
            System.out.println("4 .Exit");

            choice = sc.nextInt();

            switch (choice) {
                case 1:
                    System.out.println("Enter the values");
                    System.out.println("Enter the temperature: ");
                    int temp = sc.nextInt();
                    System.out.println("Enter the humidity: ");
                    int hum = sc.nextInt();
                    System.out.println("Enter the moisture: ");
                    String moist = sc.next();


                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeautomationdb", "root", "");
                        String sql = "INSERT INTO `sensorvalues`( `temperature`, `humidity`, `moisture`, `date`) VALUES (?,?,?,now())";
                        PreparedStatement stmt = con.prepareStatement(sql);
                        stmt.setInt(1, temp);
                        stmt.setInt(2, hum);
                        stmt.setString(3, moist);

                    } catch (Exception e) {
                        System.out.println(e);
                    }
                    break;
                case 2:
                    System.out.println("View all the values in the database");
                    try{
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/homeautomationdb","root","");
                        String sql = "SELECT `temperature`, `humidity`, `moisture`, `date` FROM `sensorvalues` ";
                        Statement stmt = con.createStatement();
                        ResultSet rs = stmt.executeQuery(sql);
                        while(rs.next()){
                            temp = rs.getInt("temperature");
                            hum = rs.getInt("humidity");
                            moist = rs.getString("moisture");
                            String date = rs.getString("date");
                            System.out.println("Temperature = "+temp);
                            System.out.println("Humidity ="+hum);
                            System.out.println("Moisture = "+moist);
                            System.out.println("Date ="+date);
                            System.out.println("\n");

                        }
                    }
                    catch (Exception e){
                        System.out.println(e);
                    }
                    break;
            }
        }
    }
}