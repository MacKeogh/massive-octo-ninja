;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
      ;agda ;; Programming and markup languages
      ;ansible ;; Tools
      ;asciidoc ;; Programming and markup languages
      ;asm ;; Programming and markup languages
      auto-completion ;; Completion
      autohotkey ;; Programming and markup languages
      better-defaults ;; Emacs
      ;bibtex ;; Programming and markup languages
      ;c-c++ ;; Programming and markup languages
      ;cfengine ;; Tools
      ;chinese ;; International support
      ;chrome ;; Tools
      clojure ;; Programming and markup languages
      colors ;; Themes
      ;(colors :variables colors-colorize-identifiers 'all)
      ;command-log ;; Tools
      ;common-lisp ;; Programming and markup languages
      ;cscope ;; Tags
      ;csharp ;; Programming and markup languages
      csv ;; Programming and markup languages
      ;d ;; Programming and markup languages
      dash ;; Tools
      ;deft ;; Tools
      ;django ;; Frameworks
      ;docker ;; Tools
      ;elfeed ;; Web services
      ;elixir ;; Programming and markup languages
      ;elm ;; Programming and markup languages
      emacs-lisp ;; !mandatory! Programming and markup languages
      ;emoji ;; Fun
      ;erc ;; Chat
      ;erlang ;; Programming and markup languages
      ;ess ;; Programming and markup languages
      ;evernote ;; Web services
      ;evil-cleverparens ;; Vim
      ;evil-commentary ;; Vim
      ;evil-snipe ;; !re-enable after gaining experience! Vim
      ;extra-langs ;; Programming and markup languages
      ;fasd ;; Tools
      ;faust ;; Programming and markup languages
      ;finance ;; Tools
      ;floobits ;; Pair programming
      ;fsharp ;; Programming and markup languages
      ;games ;; Fun
      ;geolocation ;; Tools
      ;git ;; Source control
      ;github ;; Source control
      ;gnus ;; E-mail
      ;go ;; Programming and markup languages
      ;graphviz ;; Programming and markup languages
      ;gtags ;; Tags
      ;haskell ;; Programming and markup languages
      ;helm ;; Completion
      ;html ;; Programming and markup languages
      ;ibuffer ;; Emacs
      ;idris ;; Programming and markup languages
      ;imenu-list ;; Tools
      ;ipython-notebook ;; Programming and markup languages
      ;ivy ;; Completion
      ;jabber ;; Chat
      ;java ;; Programming and markup languages
      ;javascript ;; Programming and markup languages
      ;keyboard-layout ;; International support
      ;latex ;; Programming and markup languages
      ;lua ;; Programming and markup languages
      ;markdown ;; Programming and markup languages
      ;mu4e ;; E-mail
      ;nginx ;; Tools
      ;nim ;; Programming and markup languages
      ;nixos ;; Operating systems
      ;nlinum ;; Misc
      ;ocaml ;; Programming and markup languages
      ;octave ;; Programming and markup languages
      ;org ;; Emacs
      ;osx ;; Operating systems
      ;pandoc ;; Tools
      ;pdf-tools ;; Tools
      ;perforce ;; Source control
      ;php ;; Programming and markup languages
      ;plantuml ;; Programming and markup languages
      ;prodigy ;; Tools
      ;puppet ;; Tools
      ;purescript ;; Programming and markup languages
      ;python ;; Programming and markup languages
      ;racket ;; Programming and markup languages
      ;ranger ;; Tools
      ;rcirc ;; Chat
      ;react ;; Frameworks
      ;restclient ;; Tools
      ;ruby ;; Programming and markup languages
      ;ruby-on-rails ;; Frameworks
      ;rust ;; Programming and markup languages
      ;salt ;; Tools
      ;scala ;; Programming and markup languages
      ;scheme ;; Programming and markup languages
      ;search-engine ;; Web services
      ;selectric ;; Fun
      ;semantic ;; Emacs
      ;shaders ;; Programming and markup languages
      shell ;; Tools
      shell-scripts ;; Programming and markup languages
      ;slack ;; Chat
      ;smex ;; Emacs
      ;sml ;; Programming and markup languages
      ;spacemacs ;; Distributions
      ;spacemacs-base ;; Distributions
      ;spacemacs-bootstrap ;; Distributions
      ;spacemacs-completion ;; Spacemacs distribution layers
      ;spacemacs-editing ;; Spacemacs distribution layers
      ;spacemacs-editing-visual ;; Spacemacs distribution layers
      ;spacemacs-evil ;; Spacemacs distribution layers
      ;spacemacs-language ;; Spacemacs distribution layers
      ;spacemacs-layouts ;; Spacemacs distribution layers
      ;spacemacs-misc ;; Spacemacs distribution layers
      ;spacemacs-org ;; Spacemacs distribution layers
      ;spacemacs-ui ;; Spacemacs distribution layers
      ;spacemacs-ui-visual ;; Spacemacs distribution layers
      ;speed-reading ;; Tools
      spell-checking ;; Checkers
      ;spotify ;; Web services
      sql ;; Programming and markup languages
      ;swift ;; Programming and markup languages
      syntax-checking ;; Checkers
      ;systemd ;; Tools
      ;terraform ;; Tools
      ;themes-megapack ;; Themes
      ;theming ;; Themes
      ;tmux ;; Tools
      ;twitter ;; Web services
      ;typescript ;; Programming and markup languages
      ;typography ;; Emacs
      ;vagrant ;; Tools
      ;version-control ;; Source control
      ;vim-empty-lines ;; Vim
      ;vim-powerline ;; Vim
      ;vimscript ;; Programming and markup languages
      ;vinegar ;; Vim
      ;wakatime ;; Web services
      windows-scripts ;; Programming and markup languages
      ;xkcd ;; Fun
      ;yaml ;; Programming and markup languages
      ;ycmd ;; Tools
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   ;dotspacemacs-additional-packages '(cobol-mode jcl-mode)
   dotspacemacs-additional-packages '(cobol-mode)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '(helm-fix)
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update t
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-editing-style 'hybrid
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'emacs-lisp-mode ;'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(default)
   ;dotspacemacs-themes '(default
   ;                      leuven
   ;                      adwaita
                         ;afternoon
                         ;alect-black
                         ;alect-black-alt
                         ;alect-dark
                         ;alect-dark-alt
                         ;alect-light
                         ;alect-light-alt
                         ;ample
                         ;ample-flat
                         ;ample-light
                         ;ample-zen
                         ;anti-zenburn
                         ;apropospriate-dark
                         ;apropospriate-light
                         ;badwolf
                         ;birds-of-paradise-plus
                         ;brin
                         ;bubbleberry
                         ;busybee
                         ;cherry-blossom
                         ;clues
                         ;color-theme-sanityinc-solarized
                         ;color-theme-sanityinc-tomorrow
                         ;colorsarenice-dark
                         ;colorsarenice-light
                         ;cyberpunk
                         ;dakrone
                         ;darkburn
                         ;darkmine
                         ;darktooth
   ;                     deeper-blue
   ;                     dichromacy
                         ;django
                         ;dorsey
                         ;espresso
                         ;farmhouse-dark
                         ;farmhouse-light
                         ;firebelly
                         ;flatland
                         ;flatui
                         ;fogus
                         ;gandalf
                         ;gotham
                         ;graham
                         ;grandshell
                         ;granger
                         ;gruber-darker
                         ;gruvbox
                         ;hc-zenburn
                         ;hemisu-dark
                         ;hemisu-light
                         ;heroku
                         ;hickey
                         ;inkpot
                         ;ir-black
                         ;jazz
                         ;jbeans
                         ;junio
                         ;;leuven
   ;                     light-blue
                         ;light-soap
                         ;lush
                         ;madhat2r
                         ;majapahit
   ;                     manoj-dark
                         ;material
                         ;material-light
                         ;mccarthy
                         ;minimal
                         ;minimal-light
   ;                     misterioso
                         ;moe
                         ;molokai
                         ;monochrome
                         ;monochrome-bright
                         ;monokai
                         ;mustang
                         ;naquadah
                         ;niflheim
                         ;noctilux
                         ;obsidian
                         ;occidental
                         ;odersky
                         ;oldlace
                         ;omtose-phellack
                         ;organic-green
                         ;pastels-on-dark
                         ;phoenix-dark-mono
                         ;phoenix-dark-pink
                         ;planet
                         ;professional
                         ;purple-haze
                         ;railscasts
                         ;reverse
                         ;ritchie
                         ;sanityinc-solarized-dark
                         ;sanityinc-solarized-light
                         ;sanityinc-tomorrow-blue
                         ;sanityinc-tomorrow-bright
                         ;sanityinc-tomorrow-day
                         ;sanityinc-tomorrow-eighties
                         ;sanityinc-tomorrow-night
                         ;seti
                         ;smyx
                         ;soft-charcoal
                         ;soft-morning
                         ;soft-stone
                         ;solarized
                         ;soothe
                         ;spacegray
   ;                     spacemacs-dark
   ;                     spacemacs-light
                         ;spolsky
                         ;stekene-dark
                         ;stekene-light
                         ;subatomic
                         ;subatomic256
                         ;sublime
                         ;sunny-day
   ;                     tango
                         ;tango-2
   ;                     tango-dark
                         ;tango-plus
                         ;tangotango
                         ;tao-yang
                         ;tao-yin
                         ;toxi
                         ;tronesque
   ;                     tsdh-dark
   ;                     tsdh-light
                         ;twilight
                         ;twilight-anti-bright
                         ;twilight-bright
                         ;ujelly
                         ;underwater
   ;                     wheatgrass
   ;                     whiteboard
                         ;wilson
   ;                     wombat
                         ;zen-and-art
                         ;zenburn
                         ;zonokai
                         ;zonokai-blue
                         ;zonokai-red
   ;                     )
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("Source Code Pro Semibold-10";"Source Code Pro"
                               :size 13
                               :weight semi-bold
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 1
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers 'relative
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server t
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (load-file "~/.spacemacs-user-init"))

(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (load-file "~/.spacemacs-user-config"))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#d2ceda" "#f2241f" "#67b11d" "#b1951d" "#3a81c3" "#a31db1" "#21b8c7" "#655370"])
 '(evil-want-Y-yank-to-eol nil)
 '(package-selected-packages
   (quote
    (cobol-mode insert-shebang fish-mode company-shell fuzzy clojure-snippets madhat2r-theme autothemer darkokai-theme csv-mode winum unfill diminish solarized-theme org powershell uuidgen pug-mode org-projectile org-download mwim livid-mode skewer-mode simple-httpd link-hint hide-comnt github-search flyspell-correct-helm flyspell-correct eyebrowse evil-visual-mark-mode evil-unimpaired evil-ediff eshell-z dumb-jump column-enforce-mode color-identifiers-mode yaml-mode wolfram-mode web-mode web-beautify tagedit stan-mode sql-indent slim-mode scss-mode scad-mode sass-mode ruby-end rainbow-mode rainbow-identifiers qml-mode matlab-mode magit-gh-pulls less-css-mode julia-mode json-mode json-snatcher json-reformat js2-refactor js2-mode js-doc jade-mode helm-css-scss haml-mode github-clone github-browse-file git-link gist gh marshal logito pcache ht flycheck-elm evil-snipe emmet-mode elm-mode f company-web web-completion-data company-tern dash-functional tern coffee-mode arduino-mode alchemist elixir-mode ahk-mode zeal-at-point stickyfunc-enhance srefactor helm-dash undo-tree zonokai-theme zenburn-theme zen-and-art-theme underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme stekene-theme spacegray-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme seti-theme reverse-theme railscasts-theme purple-haze-theme professional-theme planet-theme phoenix-dark-pink-theme phoenix-dark-mono-theme pastels-on-dark-theme organic-green-theme omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme niflheim-theme naquadah-theme mustang-theme monokai-theme monochrome-theme molokai-theme moe-theme minimal-theme material-theme majapahit-theme lush-theme light-soap-theme jbeans-theme jazz-theme ir-black-theme inkpot-theme heroku-theme hemisu-theme hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme gandalf-theme flatui-theme flatland-theme firebelly-theme farmhouse-theme espresso-theme emoji-cheat-sheet-plus dracula-theme django-theme darktooth-theme darkmine-theme darkburn-theme dakrone-theme cyberpunk-theme company-emoji colorsarenice-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized clues-theme cherry-blossom-theme busybee-theme bubbleberry-theme birds-of-paradise-plus-theme badwolf-theme apropospriate-theme anti-zenburn-theme ample-zen-theme ample-theme alect-themes afternoon-theme clj-refactor inflections edn multiple-cursors paredit peg cider-eval-sexp-fu cider queue clojure-mode ejc-sql xterm-color toc-org shell-pop org-repo-todo org-present org-pomodoro alert log4e gntp org-plus-contrib org-bullets multi-term mmm-mode markdown-toc markdown-mode htmlize helm-flyspell helm-company helm-c-yasnippet gnuplot git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md flycheck-pos-tip flycheck eshell-prompt-extras esh-help diff-hl company-statistics company-quickhelp pos-tip company auto-yasnippet yasnippet auto-dictionary ac-ispell auto-complete smeargle orgit magit-gitflow helm-gitignore request gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger evil-magit magit magit-popup git-commit with-editor ws-butler window-numbering volatile-highlights vi-tilde-fringe spaceline s powerline smooth-scrolling restart-emacs rainbow-delimiters popwin persp-mode pcre2el paradox hydra spinner page-break-lines open-junk-file neotree move-text macrostep lorem-ipsum linum-relative leuven-theme info+ indent-guide ido-vertical-mode hungry-delete hl-todo highlight-parentheses highlight-numbers parent-mode highlight-indentation help-fns+ helm-themes helm-swoop helm-projectile helm-mode-manager helm-make projectile pkg-info epl helm-flx helm-descbinds helm-ag google-translate golden-ratio flx-ido flx fill-column-indicator fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state smartparens evil-indent-plus evil-iedit-state iedit evil-exchange evil-escape evil-args evil-anzu anzu eval-sexp-fu highlight elisp-slime-nav define-word clean-aindent-mode buffer-move bracketed-paste auto-highlight-symbol auto-compile packed dash aggressive-indent adaptive-wrap ace-window ace-link ace-jump-helm-line helm avy helm-core popup async quelpa package-build use-package which-key bind-key bind-map evil spacemacs-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))