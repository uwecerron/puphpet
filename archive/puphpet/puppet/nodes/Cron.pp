if $cron_values == undef { $cron_values = hiera_hash('cron', false) }

if count($cron_values['jobs']) > 0 {
  each( $cron_values['jobs'] ) |$key, $job| {
    # Deletes empty cron jobs
    $job_values = delete_values($job, '')

    create_resources(cron, { "${key}" => $job_values })
  }
}
