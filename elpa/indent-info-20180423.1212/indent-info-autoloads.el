;;; indent-info-autoloads.el --- automatically extracted autoloads
;;
;;; Code:
(add-to-list 'load-path (directory-file-name (or (file-name-directory #$) (car load-path))))

;;;### (autoloads nil "indent-info" "indent-info.el" (23311 40601
;;;;;;  102208 209000))
;;; Generated autoloads from indent-info.el

(autoload 'indent-info-toggle-indent-mode "indent-info" "\
Toggle indentation modes between tabs and spaces.

\(fn)" t nil)

(autoload 'indent-info-cycle-tab-width-increase "indent-info" "\
Cycle `tab-width' increasing with `indent-info-tab-width-step'.
When reaching `indent-info-tab-width-max' it won't do anything.

\(fn)" t nil)

(autoload 'indent-info-cycle-tab-width-decrease "indent-info" "\
Cycle `tab-width' decreasing with `indent-info-tab-width-step'.
When reaching `indent-info-tab-width-min' it won't do anything.

\(fn)" t nil)

(autoload 'indent-info-mode "indent-info" "\
Toggle indent-info mode
With no argument, this command toggles the mode.
A non-null prefix argument turns the mode on.
A null prefix argument turns it off.

When enabled, information about the currently configured `indent-tabs-mode' and
`tab-width' is displayed in the mode line.

\(fn &optional ARG)" t nil)

(defvar global-indent-info-mode nil "\
Non-nil if Global Indent-Info mode is enabled.
See the `global-indent-info-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-indent-info-mode'.")

(custom-autoload 'global-indent-info-mode "indent-info" nil)

(autoload 'global-indent-info-mode "indent-info" "\
Toggle Indent-Info mode in all buffers.
With prefix ARG, enable Global Indent-Info mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Indent-Info mode is enabled in all buffers where
`indent-info-mode-enable' would do it.
See `indent-info-mode' for more information on Indent-Info mode.

\(fn &optional ARG)" t nil)

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
;;; indent-info-autoloads.el ends here
