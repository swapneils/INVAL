
;; To run as script using ECL:
;;
;; Make the following the first line of this file:
;;
;; #!/usr/local/bin/ecl -shell
;;
;; Uncomment the following:
;;
;; (load "inval.lsp")
;; (load "vis.lsp")
;; (defun get-commandline-args ()
;;   (cdr ext:*unprocessed-ecl-command-args*))

;; To run as script using GCL
;;
;; Make the following the first line of this file:
;;
;; #!/usr/lib/gcl-2.6.8/unixport/saved_gcl -f
;;
;; Uncomment the following:
;;
;; (load "inval.lsp")
;; (load "vis.lsp")
;; (defun get-commandline-args ()
;;   (cdr si::*command-args*))

(load "inval-main-internal.lsp")

(run-inval)
