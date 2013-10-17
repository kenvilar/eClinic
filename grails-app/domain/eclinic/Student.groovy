package eclinic

class Student {

	String firstName
	String middleName
	String lastName
	String college
	String major
	String idNumber
	String gender
	Date birthday
	String address
	Integer weight
	String height
	String bloodType
	boolean enrolled

	static hasMany = [diagnoses: Diagnosis]
    static constraints = {
    }
	
	String toString(){
		"${firstName}" + " " + "${lastName}"
	}
}
