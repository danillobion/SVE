package sistemadevagasdeestacionamento

class SignUpController {
    def index() { }

	
    def register() {
        String username = params.username

        def user = User.findByUsername(username)

        if (user) {
            flash.message = "User already exists with the username '${username}'"

            redirect(action: 'index')
        } else {
            String firstName = params.firstName
            String lastName = params.lastName
            String preferredSector = params.preferredSector

            user = new User(username: username, firstName: firstName, lastName: lastName, preferredSector: preferredSector)
            user.save(flush: true)
			if(User.findByUsername(username) != null){
				AuthHelper.instance.login(username)	
				redirect(controller: 'home', action: 'index')
			}
			else{
				flash.message = "So e aceito nomes e sobrenomes sem numeros"
				redirect(action: 'index')
			}
			

         }
    }
}