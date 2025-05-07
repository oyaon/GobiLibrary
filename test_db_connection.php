<?php
// Include database connection
require_once 'admin/db-connect.php';

// Test query
$sql = "SELECT DATABASE() as dbname, USER() as user, VERSION() as version";
$result = $conn->query($sql);

if ($result) {
    $row = $result->fetch_assoc();
    echo "<h2>Database Connection Successful</h2>";
    echo "<p>Database: " . htmlspecialchars($row['dbname']) . "</p>";
    echo "<p>User: " . htmlspecialchars($row['user']) . "</p>";
    echo "<p>MySQL Version: " . htmlspecialchars($row['version']) . "</p>";
    
    // Test if tables exist
    $tables = $conn->query("SHOW TABLES");
    if ($tables->num_rows > 0) {
        echo "<h3>Tables in database:</h3><ul>";
        while($table = $tables->fetch_array()) {
            echo "<li>" . htmlspecialchars($table[0]) . "</li>";
        }
        echo "</ul>";
    } else {
        echo "<p>No tables found in the database.</p>";
    }
} else {
    echo "<h2>Database Connection Failed</h2>";
    echo "<p>Error: " . htmlspecialchars($conn->error) . "</p>";
}

// Close connection
$conn->close();
?>
