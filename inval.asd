(in-package #:asdf-user)

(defsystem :inval/common
  :default-component-class cl-source-file.lsp
  :serial t
  :depends-on (:uiop)
  :components
  ((:file "inval")))

(defsystem :inval
  :serial t
  :depends-on (:inval/common))

(defsystem :inval/inval
  :default-component-class cl-source-file.lsp
  :serial t
  :depends-on (:inval/common)
  :components
  ((:file "vis")
   (:file "inval-main-internal")))

(defsystem :inval/rsk
  :default-component-class cl-source-file.lsp
  :serial t
  :depends-on (:inval/common)
  :components
  ((:file "rsk")
   (:file "rsk-main-internal")))


(defsystem :inval/simplify
  :default-component-class cl-source-file.lsp
  :serial t
  :depends-on (:inval/common)
  :components
  ((:file "rsk")
   (:file "simplify")
   (:file "simplify-main-internal")))

(defsystem :inval/translate
  :default-component-class cl-source-file.lsp
  :serial t
  :depends-on (:inval/common)
  :components
  ((:file "translate-main-internal")))

(defsystem :inval/nyat
  :default-component-class cl-source-file.lsp
  :serial t
  :depends-on (:inval/common)
  :components
  ((:file "rsk")
   (:file "simplify")
   (:file "tools")
   (:file "fdr3")
   (:file "nyat-main-internal")))

(defsystem :inval/vapo
  :default-component-class cl-source-file.lsp
  :serial t
  :depends-on (:inval/common)
  :components
  ((:file "vapo")
   (:file "simplify")
   (:file "vis")
   (:file "aux")
   (:file "vapo-main-internal")))

(defsystem :inval/run-val-test-ipc4
  :default-component-class cl-source-file.lsp
  :serial t
  :depends-on (:inval/common)
  :components
  ((:file "val-test-util")
   (:file "run-val-test-ipc4")))
