# OLX Book 📚

OLX Book is a full-stack web application built to facilitate book reselling, catalog browsing, and administrative management for libraries or community book exchanges. Created with Java, JSP, and MySQL, this application makes book borrowing and reselling simple and organized.

## Features

### 📖 User Features
- **Book Catalog**: Browse new, old, and recently added books.
- **User Registration & Login**: Secure login and registration with session management.
- **Profile Management**: Update personal information like contact details and address.
- **Cart Management**: Add, view, or remove books from the cart.
- **Checkout**: Complete orders with a seamless checkout flow.
- **Order History**: View past orders with details.

### 🛠️ Admin Features
- **Book Management**: Add, edit, or delete book listings in the database.
- **Order Overview**: Track and manage user orders.
- **Dashboard**: Centralized view of platform activities.

## Project Structure

### Backend
- **Servlets**: Java servlets in `com/admin/servlet` and `com/user/servlet` handle requests like adding books, managing user profiles, and login/logout operations.
- **Data Access Layer (DAO)**: Interfaces and implementations in `com/DAO` manage database interactions, enabling CRUD operations for books, carts, and users.
- **Database Connection**: `DBconnect.java` provides a utility for connecting to the MySQL database.

### Frontend (JSP Pages)
- **User Pages**: Pages in `src/main/webapp` let users interact with the book catalog, manage their cart, and access their profile and settings.
- **Admin Pages**: Located in `src/main/webapp/admin`, these pages allow admins to manage books and view orders.
- **Shared Components**: Reusable elements like the navigation bar (`navbar.jsp`) and footer (`footer.jsp`), as well as common styling in `style.css`.

### Dependencies
- **MySQL**: Relational database for storing book, user, and order data.
- **JSTL**: JSTL 1.2 library for simplified JSP development.

## Setup and Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/raviraj2-c/ebook.git
   cd ebook
