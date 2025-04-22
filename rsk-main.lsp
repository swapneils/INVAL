;;#!/usr/lib/gcl-2.6.8/unixport/saved_gcl -f

;; Note: Load is only requried when running as a script.
;;(load "inval.lsp")
;;(load "rsk.lsp")

;; Note: See this file for some additional things you
;; might need to un-comment
(load "rsk-main-internal.lsp")

;; Call main function inside an error handler.

(run-rsk)
