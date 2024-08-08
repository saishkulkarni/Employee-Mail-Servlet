# Employee-Mail-Servlet

Employee-Mail-Servlet is a web application that manages employee information and provides email functionality using Java Servlets and JSP.

## Features

- Employee registration
- Employee login
- View employee details
- Update employee information
- Send emails to employees

## Technologies Used

- Java Servlets
- JSP (JavaServer Pages)
- JDBC (Java Database Connectivity)
- MySQL Database
- HTML/CSS
- Bootstrap (for styling)
- JavaMail API (for email functionality)

## Project Structure

The project follows a standard Maven web application structure:

Employee-Mail-Servlet/ ├── src/ │ ├── main/ │ │ ├── java/ │ │ │ └── controller/ │ │ │ ├── EmployeeLogin.java │ │ │ ├── EmployeeSignup.java │ │ │ ├── FetchAllEmployee.java │ │ │ ├── SendMail.java │ │ │ └── UpdateEmployee.java │ │ ├── resources/ │ │ └── webapp/ │ │ ├── EmployeeHome.jsp │ │ ├── EmployeeLogin.jsp │ │ ├── EmployeeSignup.jsp │ │ ├── FetchAllEmployee.jsp │ │ ├── SendMail.jsp │ │ └── UpdateEmployee.jsp │ └── test/ └── pom.xml

## Setup and Installation

1. Clone the repository:

2. Set up a MySQL database and update the connection details in the servlet files.

3. Configure JavaMail API settings in the `SendMail.java` file.

4. Build the project using Maven:

5. Deploy the generated WAR file to a servlet container like Apache Tomcat.

6. Access the application through your web browser.

## Usage

- New employees can register using the signup page.
- Existing employees can log in using their credentials.
- After logging in, employees can view and update their information.
- Administrators can view all employee details and send emails to employees.

## Email Configuration

To use the email functionality:

1. Update the SMTP server settings in `SendMail.java`.
2. Ensure you have the necessary JavaMail API dependencies in your `pom.xml`.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is open source and available under the [MIT License](LICENSE).
