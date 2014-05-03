
public class MaybeDeep {

    static Person colleen = new Person("Colleen",
            new Pet("Ebony", null,
                new Pet("Fluffy",
                    new Person("Jane", null), null)));

    static Person richard = new Person("Richard", null);

    public static void main(String[] args) {
        System.out.println(getBreederName(colleen));
        System.out.println(getBreederName(richard));
    }

    public static String getBreederName(Person person) {
        Pet pet = person.pet;
        if (pet == null) return null;

        Pet mother = pet.mother;
        if (mother == null) return null;

        Person owner = mother.owner;
        if (owner == null) return null;

        return owner.personName;
    }
}

class Person {
    public String personName;
    public Pet pet;

    public Person(String pn, Pet pt) {
        this.personName = pn;
        this.pet = pt;
    }
}

class Pet {
    public String petName;
    public Person owner;
    public Pet mother;

    public Pet(String pn, Person o, Pet m) {
        this.petName = pn;
        this.owner = o;
        this.mother = m;
    }
}
