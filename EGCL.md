# EGCL support

On EGCL, the ASDF system depends on pure-tls/cl+ssl-compat instead of cl+ssl.
This provides the TLS API used by Drakma without selecting OpenSSL. Other Lisp
implementations retain the upstream dependency selection.

With dependencies discoverable by ASDF, run:

```sh
egcl --no-init --load tests/egcl-smoke.lisp
```

The check selects this checkout first, loads the complete system and TLS backend,
and verifies form URL encoding including UTF-8. It makes no network requests;
HTTP transport and TLS handshakes are not covered by this smoke test.
