<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Khôi Phục Mật Khẩu</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f8f9fa;
    }

<<<<<<< HEAD
=======
    .bg-primary {
        background-color: #007bff !important;
        color: #fff;
    }

>>>>>>> 1a8b7c4a0b96b8cc8bb37e0b36fa92e4b32c269e
    .forgot-password-section {
        min-height: 100vh;
        display: flex;
        align-items: center;
        justify-content: center;
    }

    .forgot-password-card {
        background: #fff;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        padding: 2rem;
        max-width: 600px;
        width: 100%;
    }

    .forgot-password-card img {
        max-width: 100%;
        height: auto;
        margin-bottom: 1rem;
    }

    .forgot-password-card label {
        font-weight: bold;
        margin-bottom: 0.5rem;
        display: block;
        font-size: 1.25rem;
    }

    .btn-success {
        background-color: #28a745;
        border-color: #28a745;
    }

    @media (max-width: 768px) {
        .forgot-password-card {
            padding: 1.5rem;
        }

        .forgot-password-card label {
            font-size: 1rem;
        }
    }
    </style>
</head>
<body>

<div class="forgot-password-section">
    <div class="forgot-password-card text-center">
        <img src="${resource(dir: 'images', file: 'fg-img.png')}" alt="Quên mật khẩu" class="img-fluid">
        <label for="email">KHÔI PHỤC MẬT KHẨU</label>
        <input class="form-control mb-3" id="email" type="email" placeholder="Nhập email của bạn" required>
        <button class="btn btn-success btn-block">Yêu Cầu Đăng Ký</button>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
