# Alpine Image for PHP-FPM

Run `nginx-wrapper` and `php-fpm-wrapper`.

## Environment Variables

- `MAX_REQUEST_BODY_SIZE_MB` (e.g., `10`; default: `2`). Sets Nginx'
  `client_max_body_size` and PHP's `post_max_size`.
- `MAX_FILE_UPLOAD_SIZE_MB` (e.g., `9`; default: `2`). Sets PHP's
  `upload_max_filesize`.
