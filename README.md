# Online Bidding Site

This project is an Online Bidding Site built with Java Servlets and JSP. It allows users to register, log in, view auctions, place bids, and manage their profiles. Sellers can add auctions, and administrators can manage users and auctions.

## Features
- User registration and login
- Seller registration and login
- Add, update, and delete auctions
- Place and view bids
- User and seller profile management
- Contact and FAQ pages
- Admin dashboard for managing users and auctions

## Project Structure
- `src/main/java/Bidding/` - Java source files (servlets, models, controllers)
- `src/main/webapp/` - Web resources (JSP, CSS, JS, HTML)
- `build/classes/Bidding/` - Compiled Java classes

## Getting Started
1. **Clone the repository:**
   ```
   git clone https://github.com/3hal0n/OnlineBiddingSite.git
   ```
2. **Import into your IDE:**
   - Open as a Maven or Java EE project in Eclipse, IntelliJ, or NetBeans.
3. **Configure your server:**
   - Deploy to Apache Tomcat or another Java EE server.
   - Ensure your database connection settings are correct in the relevant Java classes.
4. **Build and run:**
   - Build the project and deploy to your server.
   - Access the site via `http://localhost:8080/OnlineBiddingSite/`

## Database
- The project uses a relational database (e.g., MySQL).
- Update database connection details in the `DBConnect` or `DBConnection` classes.
- Run the provided SQL scripts (if any) to set up the schema.

## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

## License
This project is licensed under the MIT License.
