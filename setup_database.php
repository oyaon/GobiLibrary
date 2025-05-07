<?php
// Include database connection
require_once 'admin/db-connect.php';

// Read the SQL file
$sql = file_get_contents('database_setup.sql');

// Execute multi query
if ($conn->multi_query($sql)) {
    echo "<h2>Database setup completed successfully!</h2>";
    echo "<p>The following tables have been created/updated:</p>";
    echo "<ul>";
    echo "<li>special_offer</li>";
    echo "<li>books</li>";
    echo "<li>authors</li>";
    echo "<li>users</li>";
    echo "</ul>";
    echo "<p><a href='index.php'>Go to Homepage</a></p>";
} else {
    echo "<h2>Error setting up database:</h2>";
    echo "<p>" . $conn->error . "</p>";
}

$conn->close();
?>
