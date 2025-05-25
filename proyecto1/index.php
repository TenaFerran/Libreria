<?php
$host = "localhost";
$user = "root";
$pass = "";
$db   = "libreria";

$conn = new mysqli($host, $user, $pass, $db);
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

$sql = "SELECT * FROM libros";
$result = $conn->query($sql);
?>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8" />
  <title>Libreria</title>
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
  <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
  <style>
    body {
      background-color: #7B5741;
      background-image: repeating-linear-gradient(
        45deg,
        #7B5741,
        #7B5741 10px,
        #8C6B4B 10px,
        #8C6B4B 20px
      );
      color: #f5f1e7;
      font-family: 'Segoe UI', sans-serif;
      min-height: 100vh;
    }
    .hero-title {
      font-size: 3rem;
      font-weight: bold;
      text-align: center;
      padding: 40px 0;
      color: #fff3e0;
      text-shadow: 2px 2px 4px rgba(0,0,0,0.7);
    }
    .book-card {
      background-color: #9C7B58;
      color: #fff3e0;
      box-shadow: 0 4px 10px rgba(0,0,0,0.4);
      border-radius: 15px;
      overflow: hidden;
      transition: transform 0.2s ease;
      cursor: pointer;
    }
    .book-card:hover {
      transform: translateY(-5px);
      box-shadow: 0 8px 20px rgba(0,0,0,0.6);
    }
    .card-img-top {
      height: 300px;
      object-fit: cover;
    }
    .card-text {
      margin-top: 10px;
      display: none;
    }
    .badge {
      background-color: #a1887f;
    }
  </style>
</head>
<body>

<div class="container">
  <h1 class="hero-title">Libreria de Ferran</h1>
  <div class="row" id="libros">
    <?php while($row = $result->fetch_assoc()): ?>
      <div class="col-md-6 col-lg-4 mb-4 libro-card" style="display:none;">
        <div class="card book-card">
          <img src="img/<?php echo htmlspecialchars($row['imagen']); ?>" class="card-img-top" alt="Imagen de <?php echo htmlspecialchars($row['titulo']); ?>" />
          <div class="card-body">
            <h5 class="card-title"><?php echo htmlspecialchars($row['titulo']); ?></h5>
            <h6 class="card-subtitle mb-2 text-muted"><?php echo htmlspecialchars($row['autor']); ?></h6>
            <p class="badge"><?php echo htmlspecialchars($row['genero']); ?></p>
            <p class="card-text"><?php echo htmlspecialchars($row['descripcion']); ?></p>
          </div>
        </div>
      </div>
    <?php endwhile; ?>
  </div>
</div>

<script>
  $(document).ready(function() {
    $('.libro-card').each(function(i) {
      $(this).delay(150 * i).fadeIn(500);
    });

    $('.book-card').on('click', function(e) {
      if (!$(e.target).hasClass('card-text')) {
        $(this).find('.card-text').fadeToggle(300);
      }
    });
  });
</script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
