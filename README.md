# Alpine Image for PHP-FPM

Run `nginx-wrapper` and `php-fpm-wrapper`.

## Environment Variables

- `DEBUG` (`true` to enable, any other value to disable; default: disabled).
- `MAX_REQUEST_BODY_SIZE_MB` (e.g., `10`; default: `2`). Sets Nginx'
  `client_max_body_size` and PHP's `post_max_size`.
- `MAX_FILE_UPLOAD_SIZE_MB` (e.g., `9`; default: `2`). Sets PHP's
  `upload_max_filesize`.
- `WORKER_PROCESSES` (e.g., `16`; default: `1`). Sets PHP's `pm.max_children`
  or Nginx' `worker_processes`.


## Debugging vs Non-Debugging Mode

With debugging on in PHP-FPM:

- All errors would be printed on the page.
- `error_reporting` is set to `E_ALL`.
- OPCache is disabled.
- PHP's `memory_limit` is set to almost match the memory limit set on the
  container (if one is set).

With debugging off:

- `opcache.validate_timestamps=0`. Any other OPCache-related configuration
  can be overridden with a custom `.ini` file.
