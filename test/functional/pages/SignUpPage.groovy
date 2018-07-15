package pages

import geb.Page

class SignUpPage extends Page {
    static url = 'signUp/index'

    static at = {
        title ==~ /Sign up/
    }

    def proceed(String username, String preferredSector) {
        $("input[name='username']").value(username)
        $("input[name='firstName']").value("Primeironome")
        $("input[name='lastName']").value("Ultimonome")
        $("select[name='preferredSector']").value(preferredSector)
        $("input[name='signUp']").click()
    }
	
	
	def register(String username, String firstname, String lastname) {
		$("input[name='username']").value(username)
		$("input[name='firstname']").value(firstname)
		$("input[name='lastname']").value(lastname)
		
	}
	
	def preferredSector(String preferredSector){
		$("select[name='preferredSector']").value(preferredSector)
	}
	
	def confirmoSignUp(){
		$("input[name='signUp']").click()
	}
	
}