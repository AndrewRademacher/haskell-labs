
public class Maybe {

    public static void main(String[] args) {
        Person john = new Person("John", "Edward", "Doe",
            new Address("123 W. Somewhere Dr.", "Apt. 334", "Kansas City", "Missouri", 64108),
            new Address("432 N. Nowhere Dr.", "Ste. 432", "Kansas City", "Missorui", 64109));
        Person jane = new Person("Jane", null, "Doe", null, null);

        System.out.println(john.middleName);
        System.out.println(jane.middleName);

        //System.out.println(john.homeAddress.line2);
        //System.out.println(jane.homeAddress.line2);
        
        System.out.println(getHomeLine2(john));
        System.out.println(getHomeLine2(jane));

        System.out.println(getWorkLine2(john));
        System.out.println(getWorkLine2(jane));
    }

    public static String getHomeLine2(Person obj) {
        Address a = obj.homeAddress;
        if (a != null) return a.line2;
        else return null;
    }

    public static String getWorkLine2(Person obj) {
        Address a = obj.workAddress;
        if (a != null) return a.line2;
        else return null;
    }
}

class Person {
    public String firstName;
    public String middleName;
    public String lastName;
    public Address homeAddress;
    public Address workAddress;

    public Person(String fn, String mn, String ln, Address homeAddr, Address workAddr) {
        this.firstName = fn;
        this.middleName = mn;
        this.lastName = ln;
        this.homeAddress = homeAddr;
        this.workAddress =workAddr;
    }
}

class Address {
    public String line1;
    public String line2;
    public String city;
    public String state;
    public int zipCode;

    public Address(String l1, String l2, String c, String s, int z) {
        this.line1 = l1;
        this.line2 = l2;
        this.city = c;
        this.state = s;
        this.zipCode = z;
    }
}
