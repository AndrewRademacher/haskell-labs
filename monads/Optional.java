
public class Optional {

    static Person john = new Person("John", "Edward", "Doe",
            new Address("123 W. Somewhere Dr.", "Apt. 334", "Kansas City", "Missouri", 64108));
    static Person jane = new Person("John", null, "Doe", null);

    public static void main(String[] args) {
        System.out.println(john.middleName);
        System.out.println(jane.middleName);

        System.out.println(john.address.line2);
        System.out.println(jane.address.line2);        
    }
}

class Person {
    public String firstName;
    public String middleName;
    public String lastName;
    public Address address;

    public Person(String fn, String mn, String ln, Address addr) {
        this.firstName = fn;
        this.middleName = mn;
        this.lastName = ln;
        this.address = addr;
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
