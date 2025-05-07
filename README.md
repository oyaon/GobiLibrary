# GobiLibrary - Library Management System

![GobiLibrary Banner](images/books1.png)

A comprehensive Library Management System built with PHP and MySQL, designed to manage books, authors, users, and borrowing operations efficiently.

## 🌟 Features

- **User Management**
  - User registration and authentication
  - Role-based access control (Admin, Librarian, User)
  - User profiles and borrowing history

- **Book Management**
  - Add, edit, and remove books
  - Search and filter books
  - Book details and availability status

- **Borrowing System**
  - Check-out and return books
  - Due date tracking
  - Fine calculation for late returns

- **Admin Dashboard**
  - Manage users and permissions
  - View borrowing history
  - Generate reports
  - Manage book inventory

## 🚀 Quick Start

### Prerequisites
- PHP 7.4 or higher
- MySQL 5.7 or higher
- Web server (Apache/Nginx)
- Composer (for dependency management)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/oyaon/GobiLibrary.git
   cd GobiLibrary
   ```

2. **Set up the database**
   - Create a new MySQL database
   - Import the database schema from `database_setup.sql`
   - Configure database credentials in `admin/db-connect.php`

3. **Configure the application**
   - Set proper file permissions
   - Configure your web server to point to the project directory

4. **Access the application**
   - Open your browser and navigate to `http://localhost/GobiLibrary`
   - Default admin credentials (change after first login):
     - Username: admin@example.com
     - Password: admin123

## 📂 Project Structure

```
GobiLibrary/
├── admin/               # Admin panel files
├── css/                 # Stylesheets and frameworks
├── images/              # Image assets
├── pdfs/                # PDF files (if any)
├── actions.php          # General actions handler
├── add_book.php         # Add new book
├── book-details.php     # Book details page
├── borrow.php           # Book borrowing handler
├── cart-page.php        # Shopping cart
├── database_setup.sql   # Database schema
├── index.php            # Homepage
└── README.md           # This file
```

## 🔧 Configuration

### Database Configuration
Edit `admin/db-connect.php` with your database credentials:

```php
$servername = "localhost";
$username = "your_username";
$password = "your_password";
$dbname = "bms";
```

### Environment Setup
1. PHP extensions required:
   - PDO
   - MySQLi
   - GD Library (for image processing)

2. Recommended PHP settings:
   ```
   upload_max_filesize = 10M
   post_max_size = 10M
   max_execution_time = 300
   memory_limit = 256M
   ```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- Bootstrap 5 for frontend components
- Font Awesome for icons
- All contributors who helped in development

## 📧 Contact

For any queries, please contact [Your Email] or open an issue on GitHub.

---

<div align="center">
  Made with ❤️ by Your Name
</div>
