(require :asdf)
(asdf:initialize-source-registry
 (list :source-registry
       (list :directory (merge-pathnames "../" (uiop:pathname-directory-pathname *load-truename*)))
       :inherit-configuration))
(asdf:load-system "drakma")
(assert (string= "a+b%2Fc" (drakma:url-encode "a b/c" :utf-8)))
(assert (string= "%C3%A9" (drakma:url-encode "é" :utf-8)))
(assert (find-package :pure-tls))
(format t "DRAKMA-PASS~%")
