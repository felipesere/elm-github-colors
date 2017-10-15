module Language exposing (Language, fromString, toColor)

{-| This library provides a union type for languges for which Github provides color codes and their respective color

@docs Language, fromString, toColor

-}


{-| The union type of all languages supported by Github 
-}
type Language
    = Other
    | OneCEnterprise
    | ABAP
    | ActionScript
    | Ada
    | Agda
    | AGSScript
    | Alloy
    | AlpineAbuild
    | AMPL
    | ANTLR
    | Apex
    | APIBlueprint
    | APL
    | ApolloGuidanceComputer
    | AppleScript
    | Arc
    | Arduino
    | ASP
    | AspectJ
    | Assembly
    | ATS
    | Augeas
    | AutoHotkey
    | AutoIt
    | Awk
    | Ballerina
    | Batchfile
    | Befunge
    | Bison
    | BitBake
    | BlitzBasic
    | BlitzMax
    | Bluespec
    | Boo
    | Brainfuck
    | Brightscript
    | Bro
    | C
    | CSharp
    | CPlusPlus
    | C2hsHaskell
    | CapnProto
    | CartoCSS
    | Ceylon
    | Chapel
    | Charity
    | ChucK
    | Cirru
    | Clarion
    | Clean
    | Click
    | CLIPS
    | Clojure
    | CMake
    | COBOL
    | CoffeeScript
    | ColdFusion
    | ColdFusionCFC
    | CommonLisp
    | ComponentPascal
    | Cool
    | Coq
    | Crystal
    | Csound
    | CsoundDocument
    | CsoundScore
    | CSS
    | Cuda
    | CWeb
    | Cycript
    | Cython
    | D
    | Dart
    | DataWeave
    | DIGITALCommandLanguage
    | DM
    | Dogescript
    | DTrace
    | Dylan
    | E
    | EC
    | ECL
    | ECLiPSe
    | Eiffel
    | Elixir
    | Elm
    | EmacsLisp
    | EmberScript
    | EQ
    | Erlang
    | FSharp
    | Factor
    | Fancy
    | Fantom
    | FilebenchWML
    | Filterscript
    | Fish
    | FLUX
    | Forth
    | Fortran
    | FreeMarker
    | Frege
    | GameMakerLanguage
    | GAMS
    | GAP
    | GCCMachineDescription
    | GDB
    | GDScript
    | Genie
    | Genshi
    | GentooEbuild
    | GentooEclass
    | Gherkin
    | GLSL
    | Glyph
    | Gnuplot
    | Go
    | Golo
    | Gosu
    | Grace
    | GrammaticalFramework
    | Groovy
    | GroovyServerPages
    | Hack
    | Harbour
    | Haskell
    | Haxe
    | HCL
    | HLSL
    | HTML
    | Hy
    | HyPhy
    | IDL
    | Idris
    | IGORPro
    | Inform7
    | InnoSetup
    | Io
    | Ioke
    | Isabelle
    | IsabelleROOT
    | J
    | Jasmin
    | Java
    | JavaServerPages
    | JavaScript
    | JFlex
    | Jison
    | JisonLex
    | Jolie
    | JSONiq
    | JSX
    | Julia
    | JupyterNotebook
    | Kotlin
    | KRL
    | LabVIEW
    | Lasso
    | Lean
    | Lex
    | LFE
    | LilyPond
    | Limbo
    | LiterateAgda
    | LiterateCoffeeScript
    | LiterateHaskell
    | LiveScript
    | LLVM
    | Logos
    | Logtalk
    | LOLCODE
    | LookML
    | LoomScript
    | LSL
    | Lua
    | M
    | M4
    | M4Sugar
    | Makefile
    | Mako
    | Mask
    | Mathematica
    | Matlab
    | Max
    | MAXScript
    | Mercury
    | Meson
    | Metal
    | MiniD
    | Mirah
    | Modelica
    | Modula2
    | ModuleManagementSystem
    | Monkey
    | Moocode
    | MoonScript
    | MQL4
    | MQL5
    | MTML
    | MUF
    | Mupad
    | Myghty
    | NCL
    | Nearley
    | Nemerle
    | NesC
    | NetLinx
    | NetLinxERB
    | NetLogo
    | NewLisp
    | Nim
    | Nit
    | Nix
    | NSIS
    | Nu
    | NumPy
    | ObjectiveC
    | ObjectiveCPlusPlus
    | ObjectiveJ
    | OCaml
    | Omgrofl
    | Ooc
    | Opa
    | Opal
    | OpenCL
    | OpenEdgeABL
    | OpenRCrunscript
    | OpenSCAD
    | Ox
    | Oxygene
    | Oz
    | P4
    | Pan
    | Papyrus
    | Parrot
    | ParrotAssembly
    | ParrotInternalRepresentation
    | Pascal
    | PAWN
    | Pep8
    | Perl
    | Perl6
    | PHP
    | PicoLisp
    | PigLatin
    | Pike
    | PLpgSQL
    | PLSQL
    | PogoScript
    | Pony
    | PostScript
    | POVRaySDL
    | PowerBuilder
    | PowerShell
    | Processing
    | Prolog
    | PropellerSpin
    | Puppet
    | PureBasic
    | PureScript
    | Python
    | Pythonconsole
    | QMake
    | QML
    | R
    | Racket
    | Ragel
    | RAML
    | Rascal
    | REALbasic
    | Reason
    | Rebol
    | Red
    | Redcode
    | RenPy
    | RenderScript
    | REXX
    | Ring
    | RobotFramework
    | Roff
    | Rouge
    | Ruby
    | RUNOFF
    | Rust
    | Sage
    | SaltStack
    | SAS
    | Scala
    | Scheme
    | Scilab
    | Self
    | ShaderLab
    | Shell
    | ShellSession
    | Shen
    | Slash
    | Smali
    | Smalltalk
    | Smarty
    | SMT
    | SourcePawn
    | SQF
    | SQLPL
    | Squirrel
    | SRecodeTemplate
    | Stan
    | StandardML
    | Stata
    | SuperCollider
    | Swift
    | SystemVerilog
    | Tcl
    | Tcsh
    | Terra
    | TeX
    | Thrift
    | TIProgram
    | TLA
    | Turing
    | TXL
    | TypeScript
    | UnifiedParallelC
    | UnixAssembly
    | Uno
    | UnrealScript
    | UrWeb
    | Vala
    | VCL
    | Verilog
    | VHDL
    | Vimscript
    | VisualBasic
    | Volt
    | Vue
    | WebAssembly
    | WebIDL
    | Wisp
    | X10
    | XBase
    | XC
    | Xojo
    | XProc
    | XQuery
    | XS
    | XSLT
    | Xtend
    | Yacc
    | Zephir
    | Zimpl


{-| Parse a string to a lanuge. Unrecognized strings get turned into Other
-}
fromString : String -> Language
fromString raw =
    case raw of
        "1C Enterprise" ->
            OneCEnterprise

        "ABAP" ->
            ABAP

        "ActionScript" ->
            ActionScript

        "Ada" ->
            Ada

        "Agda" ->
            Agda

        "AGS Script" ->
            AGSScript

        "Alloy" ->
            Alloy

        "Alpine Abuild" ->
            AlpineAbuild

        "AMPL" ->
            AMPL

        "ANTLR" ->
            ANTLR

        "Apex" ->
            Apex

        "API Blueprint" ->
            APIBlueprint

        "APL" ->
            APL

        "Apollo Guidance Computer" ->
            ApolloGuidanceComputer

        "AppleScript" ->
            AppleScript

        "Arc" ->
            Arc

        "Arduino" ->
            Arduino

        "ASP" ->
            ASP

        "AspectJ" ->
            AspectJ

        "Assembly" ->
            Assembly

        "ATS" ->
            ATS

        "Augeas" ->
            Augeas

        "AutoHotkey" ->
            AutoHotkey

        "AutoIt" ->
            AutoIt

        "Awk" ->
            Awk

        "Ballerina" ->
            Ballerina

        "Batchfile" ->
            Batchfile

        "Befunge" ->
            Befunge

        "Bison" ->
            Bison

        "BitBake" ->
            BitBake

        "BlitzBasic" ->
            BlitzBasic

        "BlitzMax" ->
            BlitzMax

        "Bluespec" ->
            Bluespec

        "Boo" ->
            Boo

        "Brainfuck" ->
            Brainfuck

        "Brightscript" ->
            Brightscript

        "Bro" ->
            Bro

        "C" ->
            C

        "C#" ->
            CSharp

        "C++" ->
            CPlusPlus

        "C2hs Haskell" ->
            C2hsHaskell

        "Cap'n Proto" ->
            CapnProto

        "CartoCSS" ->
            CartoCSS

        "Ceylon" ->
            Ceylon

        "Chapel" ->
            Chapel

        "Charity" ->
            Charity

        "ChucK" ->
            ChucK

        "Cirru" ->
            Cirru

        "Clarion" ->
            Clarion

        "Clean" ->
            Clean

        "Click" ->
            Click

        "CLIPS" ->
            CLIPS

        "Clojure" ->
            Clojure

        "CMake" ->
            CMake

        "COBOL" ->
            COBOL

        "CoffeeScript" ->
            CoffeeScript

        "ColdFusion" ->
            ColdFusion

        "ColdFusion CFC" ->
            ColdFusionCFC

        "Common Lisp" ->
            CommonLisp

        "Component Pascal" ->
            ComponentPascal

        "Cool" ->
            Cool

        "Coq" ->
            Coq

        "Crystal" ->
            Crystal

        "Csound" ->
            Csound

        "Csound Document" ->
            CsoundDocument

        "Csound Score" ->
            CsoundScore

        "CSS" ->
            CSS

        "Cuda" ->
            Cuda

        "CWeb" ->
            CWeb

        "Cycript" ->
            Cycript

        "Cython" ->
            Cython

        "D" ->
            D

        "Dart" ->
            Dart

        "DataWeave" ->
            DataWeave

        "DIGITAL Command Language" ->
            DIGITALCommandLanguage

        "DM" ->
            DM

        "Dogescript" ->
            Dogescript

        "DTrace" ->
            DTrace

        "Dylan" ->
            Dylan

        "E" ->
            E

        "eC" ->
            EC

        "ECL" ->
            ECL

        "ECLiPSe" ->
            ECLiPSe

        "Eiffel" ->
            Eiffel

        "Elixir" ->
            Elixir

        "Elm" ->
            Elm

        "Emacs Lisp" ->
            EmacsLisp

        "EmberScript" ->
            EmberScript

        "EQ" ->
            EQ

        "Erlang" ->
            Erlang

        "F#" ->
            FSharp

        "Factor" ->
            Factor

        "Fancy" ->
            Fancy

        "Fantom" ->
            Fantom

        "Filebench WML" ->
            FilebenchWML

        "Filterscript" ->
            Filterscript

        "fish" ->
            Fish

        "FLUX" ->
            FLUX

        "Forth" ->
            Forth

        "Fortran" ->
            Fortran

        "FreeMarker" ->
            FreeMarker

        "Frege" ->
            Frege

        "Game Maker Language" ->
            GameMakerLanguage

        "GAMS" ->
            GAMS

        "GAP" ->
            GAP

        "GCC Machine Description" ->
            GCCMachineDescription

        "GDB" ->
            GDB

        "GDScript" ->
            GDScript

        "Genie" ->
            Genie

        "Genshi" ->
            Genshi

        "Gentoo Ebuild" ->
            GentooEbuild

        "Gentoo Eclass" ->
            GentooEclass

        "Gherkin" ->
            Gherkin

        "GLSL" ->
            GLSL

        "Glyph" ->
            Glyph

        "Gnuplot" ->
            Gnuplot

        "Go" ->
            Go

        "Golo" ->
            Golo

        "Gosu" ->
            Gosu

        "Grace" ->
            Grace

        "Grammatical Framework" ->
            GrammaticalFramework

        "Groovy" ->
            Groovy

        "Groovy Server Pages" ->
            GroovyServerPages

        "Hack" ->
            Hack

        "Harbour" ->
            Harbour

        "Haskell" ->
            Haskell

        "Haxe" ->
            Haxe

        "HCL" ->
            HCL

        "HLSL" ->
            HLSL

        "HTML" ->
            HTML

        "Hy" ->
            Hy

        "HyPhy" ->
            HyPhy

        "IDL" ->
            IDL

        "Idris" ->
            Idris

        "IGOR Pro" ->
            IGORPro

        "Inform 7" ->
            Inform7

        "Inno Setup" ->
            InnoSetup

        "Io" ->
            Io

        "Ioke" ->
            Ioke

        "Isabelle" ->
            Isabelle

        "Isabelle ROOT" ->
            IsabelleROOT

        "J" ->
            J

        "Jasmin" ->
            Jasmin

        "Java" ->
            Java

        "Java Server Pages" ->
            JavaServerPages

        "JavaScript" ->
            JavaScript

        "JFlex" ->
            JFlex

        "Jison" ->
            Jison

        "Jison Lex" ->
            JisonLex

        "Jolie" ->
            Jolie

        "JSONiq" ->
            JSONiq

        "JSX" ->
            JSX

        "Julia" ->
            Julia

        "Jupyter Notebook" ->
            JupyterNotebook

        "Kotlin" ->
            Kotlin

        "KRL" ->
            KRL

        "LabVIEW" ->
            LabVIEW

        "Lasso" ->
            Lasso

        "Lean" ->
            Lean

        "Lex" ->
            Lex

        "LFE" ->
            LFE

        "LilyPond" ->
            LilyPond

        "Limbo" ->
            Limbo

        "Literate Agda" ->
            LiterateAgda

        "Literate CoffeeScript" ->
            LiterateCoffeeScript

        "Literate Haskell" ->
            LiterateHaskell

        "LiveScript" ->
            LiveScript

        "LLVM" ->
            LLVM

        "Logos" ->
            Logos

        "Logtalk" ->
            Logtalk

        "LOLCODE" ->
            LOLCODE

        "LookML" ->
            LookML

        "LoomScript" ->
            LoomScript

        "LSL" ->
            LSL

        "Lua" ->
            Lua

        "M" ->
            M

        "M4" ->
            M4

        "M4Sugar" ->
            M4Sugar

        "Makefile" ->
            Makefile

        "Mako" ->
            Mako

        "Mask" ->
            Mask

        "Mathematica" ->
            Mathematica

        "Matlab" ->
            Matlab

        "Max" ->
            Max

        "MAXScript" ->
            MAXScript

        "Mercury" ->
            Mercury

        "Meson" ->
            Meson

        "Metal" ->
            Metal

        "MiniD" ->
            MiniD

        "Mirah" ->
            Mirah

        "Modelica" ->
            Modelica

        "Modula-2" ->
            Modula2

        "Module Management System" ->
            ModuleManagementSystem

        "Monkey" ->
            Monkey

        "Moocode" ->
            Moocode

        "MoonScript" ->
            MoonScript

        "MQL4" ->
            MQL4

        "MQL5" ->
            MQL5

        "MTML" ->
            MTML

        "MUF" ->
            MUF

        "mupad" ->
            Mupad

        "Myghty" ->
            Myghty

        "NCL" ->
            NCL

        "Nearley" ->
            Nearley

        "Nemerle" ->
            Nemerle

        "nesC" ->
            NesC

        "NetLinx" ->
            NetLinx

        "NetLinx+ERB" ->
            NetLinxERB

        "NetLogo" ->
            NetLogo

        "NewLisp" ->
            NewLisp

        "Nim" ->
            Nim

        "Nit" ->
            Nit

        "Nix" ->
            Nix

        "NSIS" ->
            NSIS

        "Nu" ->
            Nu

        "NumPy" ->
            NumPy

        "Objective-C" ->
            ObjectiveC

        "Objective-C++" ->
            ObjectiveCPlusPlus

        "Objective-J" ->
            ObjectiveJ

        "OCaml" ->
            OCaml

        "Omgrofl" ->
            Omgrofl

        "ooc" ->
            Ooc

        "Opa" ->
            Opa

        "Opal" ->
            Opal

        "OpenCL" ->
            OpenCL

        "OpenEdge ABL" ->
            OpenEdgeABL

        "OpenRC runscript" ->
            OpenRCrunscript

        "OpenSCAD" ->
            OpenSCAD

        "Ox" ->
            Ox

        "Oxygene" ->
            Oxygene

        "Oz" ->
            Oz

        "P4" ->
            P4

        "Pan" ->
            Pan

        "Papyrus" ->
            Papyrus

        "Parrot" ->
            Parrot

        "Parrot Assembly" ->
            ParrotAssembly

        "Parrot Internal Representation" ->
            ParrotInternalRepresentation

        "Pascal" ->
            Pascal

        "PAWN" ->
            PAWN

        "Pep8" ->
            Pep8

        "Perl" ->
            Perl

        "Perl 6" ->
            Perl6

        "PHP" ->
            PHP

        "PicoLisp" ->
            PicoLisp

        "PigLatin" ->
            PigLatin

        "Pike" ->
            Pike

        "PLpgSQL" ->
            PLpgSQL

        "PLSQL" ->
            PLSQL

        "PogoScript" ->
            PogoScript

        "Pony" ->
            Pony

        "PostScript" ->
            PostScript

        "POV-Ray SDL" ->
            POVRaySDL

        "PowerBuilder" ->
            PowerBuilder

        "PowerShell" ->
            PowerShell

        "Processing" ->
            Processing

        "Prolog" ->
            Prolog

        "Propeller Spin" ->
            PropellerSpin

        "Puppet" ->
            Puppet

        "PureBasic" ->
            PureBasic

        "PureScript" ->
            PureScript

        "Python" ->
            Python

        "Python console" ->
            Pythonconsole

        "QMake" ->
            QMake

        "QML" ->
            QML

        "R" ->
            R

        "Racket" ->
            Racket

        "Ragel" ->
            Ragel

        "RAML" ->
            RAML

        "Rascal" ->
            Rascal

        "REALbasic" ->
            REALbasic

        "Reason" ->
            Reason

        "Rebol" ->
            Rebol

        "Red" ->
            Red

        "Redcode" ->
            Redcode

        "Ren'Py" ->
            RenPy

        "RenderScript" ->
            RenderScript

        "REXX" ->
            REXX

        "Ring" ->
            Ring

        "RobotFramework" ->
            RobotFramework

        "Roff" ->
            Roff

        "Rouge" ->
            Rouge

        "Ruby" ->
            Ruby

        "RUNOFF" ->
            RUNOFF

        "Rust" ->
            Rust

        "Sage" ->
            Sage

        "SaltStack" ->
            SaltStack

        "SAS" ->
            SAS

        "Scala" ->
            Scala

        "Scheme" ->
            Scheme

        "Scilab" ->
            Scilab

        "Self" ->
            Self

        "ShaderLab" ->
            ShaderLab

        "Shell" ->
            Shell

        "ShellSession" ->
            ShellSession

        "Shen" ->
            Shen

        "Slash" ->
            Slash

        "Smali" ->
            Smali

        "Smalltalk" ->
            Smalltalk

        "Smarty" ->
            Smarty

        "SMT" ->
            SMT

        "SourcePawn" ->
            SourcePawn

        "SQF" ->
            SQF

        "SQLPL" ->
            SQLPL

        "Squirrel" ->
            Squirrel

        "SRecode Template" ->
            SRecodeTemplate

        "Stan" ->
            Stan

        "Standard ML" ->
            StandardML

        "Stata" ->
            Stata

        "SuperCollider" ->
            SuperCollider

        "Swift" ->
            Swift

        "SystemVerilog" ->
            SystemVerilog

        "Tcl" ->
            Tcl

        "Tcsh" ->
            Tcsh

        "Terra" ->
            Terra

        "TeX" ->
            TeX

        "Thrift" ->
            Thrift

        "TI Program" ->
            TIProgram

        "TLA" ->
            TLA

        "Turing" ->
            Turing

        "TXL" ->
            TXL

        "TypeScript" ->
            TypeScript

        "Unified Parallel C" ->
            UnifiedParallelC

        "Unix Assembly" ->
            UnixAssembly

        "Uno" ->
            Uno

        "UnrealScript" ->
            UnrealScript

        "UrWeb" ->
            UrWeb

        "Vala" ->
            Vala

        "VCL" ->
            VCL

        "Verilog" ->
            Verilog

        "VHDL" ->
            VHDL

        "Vim script" ->
            Vimscript

        "Visual Basic" ->
            VisualBasic

        "Volt" ->
            Volt

        "Vue" ->
            Vue

        "WebAssembly" ->
            WebAssembly

        "WebIDL" ->
            WebIDL

        "wisp" ->
            Wisp

        "X10" ->
            X10

        "xBase" ->
            XBase

        "XC" ->
            XC

        "Xojo" ->
            Xojo

        "XProc" ->
            XProc

        "XQuery" ->
            XQuery

        "XS" ->
            XS

        "XSLT" ->
            XSLT

        "Xtend" ->
            Xtend

        "Yacc" ->
            Yacc

        "Zephir" ->
            Zephir

        "Zimpl" ->
            Zimpl

        _ ->
            Other


{-| Convert a languges to its respective color code
-}
toColor : Language -> String
toColor language =
    case language of
        OneCEnterprise ->
           "#814CCC"

        ABAP ->
           "#E8274B"

        ActionScript ->
           "#882B0F"

        Ada ->
           "#02f88c"

        Agda ->
           "#315665"

        AGSScript ->
           "#B9D9FF"

        Alloy ->
           "#64C800"

        AlpineAbuild ->
           "grey"

        AMPL ->
           "#E6EFBB"

        ANTLR ->
           "#9DC3FF"

        Apex ->
           "grey"

        APIBlueprint ->
           "#2ACCA8"

        APL ->
           "#5A8164"

        ApolloGuidanceComputer ->
           "grey"

        AppleScript ->
           "#101F1F"

        Arc ->
           "#aa2afe"

        Arduino ->
           "#bd79d1"

        ASP ->
           "#6a40fd"

        AspectJ ->
           "#a957b0"

        Assembly ->
           "#6E4C13"

        ATS ->
           "#1ac620"

        Augeas ->
           "grey"

        AutoHotkey ->
           "#6594b9"

        AutoIt ->
           "#1C3552"

        Awk ->
           "grey"

        Ballerina ->
           "#FF5000"

        Batchfile ->
           "#C1F12E"

        Befunge ->
           "grey"

        Bison ->
           "grey"

        BitBake ->
           "grey"

        BlitzBasic ->
           "grey"

        BlitzMax ->
           "#cd6400"

        Bluespec ->
           "grey"

        Boo ->
           "#d4bec1"

        Brainfuck ->
           "#2F2530"

        Brightscript ->
           "grey"

        Bro ->
           "grey"

        C ->
           "#555555"

        CSharp ->
           "#178600"

        CPlusPlus ->
           "#f34b7d"

        C2hsHaskell ->
           "grey"

        CapnProto ->
           "grey"

        CartoCSS ->
           "grey"

        Ceylon ->
           "#dfa535"

        Chapel ->
           "#8dc63f"

        Charity ->
           "grey"

        ChucK ->
           "grey"

        Cirru ->
           "#ccccff"

        Clarion ->
           "#db901e"

        Clean ->
           "#3F85AF"

        Click ->
           "#E4E6F3"

        CLIPS ->
           "grey"

        Clojure ->
           "#db5855"

        CMake ->
           "grey"

        COBOL ->
           "grey"

        CoffeeScript ->
           "#244776"

        ColdFusion ->
           "#ed2cd6"

        ColdFusionCFC ->
           "grey"

        CommonLisp ->
           "#3fb68b"

        ComponentPascal ->
           "#B0CE4E"

        Cool ->
           "grey"

        Coq ->
           "grey"

        Crystal ->
           "#776791"

        Csound ->
           "grey"

        CsoundDocument ->
           "grey"

        CsoundScore ->
           "grey"

        CSS ->
           "#563d7c"

        Cuda ->
           "#3A4E3A"

        CWeb ->
           "grey"

        Cycript ->
           "grey"

        Cython ->
           "grey"

        D ->
           "#ba595e"

        Dart ->
           "#00B4AB"

        DataWeave ->
           "#003a52"

        DIGITALCommandLanguage ->
           "grey"

        DM ->
           "#447265"

        Dogescript ->
           "#cca760"

        DTrace ->
           "grey"

        Dylan ->
           "#6c616e"

        E ->
           "#ccce35"

        EC ->
           "#913960"

        ECL ->
           "#8a1267"

        ECLiPSe ->
           "grey"

        Eiffel ->
           "#946d57"

        Elixir ->
           "#6e4a7e"

        Elm ->
           "#60B5CC"

        EmacsLisp ->
           "#c065db"

        EmberScript ->
           "#FFF4F3"

        EQ ->
           "#a78649"

        Erlang ->
           "#B83998"

        FSharp ->
           "#b845fc"

        Factor ->
           "#636746"

        Fancy ->
           "#7b9db4"

        Fantom ->
           "#14253c"

        FilebenchWML ->
           "grey"

        Filterscript ->
           "grey"

        Fish ->
           "grey"

        FLUX ->
           "#88ccff"

        Forth ->
           "#341708"

        Fortran ->
           "#4d41b1"

        FreeMarker ->
           "#0050b2"

        Frege ->
           "#00cafe"

        GameMakerLanguage ->
           "#8fb200"

        GAMS ->
           "grey"

        GAP ->
           "grey"

        GCCMachineDescription ->
           "grey"

        GDB ->
           "grey"

        GDScript ->
           "grey"

        Genie ->
           "#fb855d"

        Genshi ->
           "grey"

        GentooEbuild ->
           "grey"

        GentooEclass ->
           "grey"

        Gherkin ->
           "#5B2063"

        GLSL ->
           "grey"

        Glyph ->
           "#e4cc98"

        Gnuplot ->
           "#f0a9f0"

        Go ->
           "#375eab"

        Golo ->
           "#88562A"

        Gosu ->
           "#82937f"

        Grace ->
           "grey"

        GrammaticalFramework ->
           "#79aa7a"

        Groovy ->
           "#e69f56"

        GroovyServerPages ->
           "grey"

        Hack ->
           "#878787"

        Harbour ->
           "#0e60e3"

        Haskell ->
           "#5e5086"

        Haxe ->
           "#df7900"

        HCL ->
           "grey"

        HLSL ->
           "grey"

        HTML ->
           "#e34c26"

        Hy ->
           "#7790B2"

        HyPhy ->
           "grey"

        IDL ->
           "#a3522f"

        Idris ->
           "grey"

        IGORPro ->
           "grey"

        Inform7 ->
           "grey"

        InnoSetup ->
           "grey"

        Io ->
           "#a9188d"

        Ioke ->
           "#078193"

        Isabelle ->
           "#FEFE00"

        IsabelleROOT ->
           "grey"

        J ->
           "#9EEDFF"

        Jasmin ->
           "grey"

        Java ->
           "#b07219"

        JavaServerPages ->
           "grey"

        JavaScript ->
           "#f1e05a"

        JFlex ->
           "grey"

        Jison ->
           "grey"

        JisonLex ->
           "grey"

        Jolie ->
           "#843179"

        JSONiq ->
           "#40d47e"

        JSX ->
           "grey"

        Julia ->
           "#a270ba"

        JupyterNotebook ->
           "#DA5B0B"

        Kotlin ->
           "#F18E33"

        KRL ->
           "#28431f"

        LabVIEW ->
           "grey"

        Lasso ->
           "#999999"

        Lean ->
           "grey"

        Lex ->
           "#DBCA00"

        LFE ->
           "grey"

        LilyPond ->
           "grey"

        Limbo ->
           "grey"

        LiterateAgda ->
           "grey"

        LiterateCoffeeScript ->
           "grey"

        LiterateHaskell ->
           "grey"

        LiveScript ->
           "#499886"

        LLVM ->
           "#185619"

        Logos ->
           "grey"

        Logtalk ->
           "grey"

        LOLCODE ->
           "#cc9900"

        LookML ->
           "#652B81"

        LoomScript ->
           "grey"

        LSL ->
           "#3d9970"

        Lua ->
           "#000080"

        M ->
           "grey"

        M4 ->
           "grey"

        M4Sugar ->
           "grey"

        Makefile ->
           "#427819"

        Mako ->
           "grey"

        Mask ->
           "#f97732"

        Mathematica ->
           "grey"

        Matlab ->
           "#e16737"

        Max ->
           "#c4a79c"

        MAXScript ->
           "#00a6a6"

        Mercury ->
           "#ff2b2b"

        Meson ->
           "#007800"

        Metal ->
           "#8f14e9"

        MiniD ->
           "grey"

        Mirah ->
           "#c7a938"

        Modelica ->
           "grey"

        Modula2 ->
           "grey"

        ModuleManagementSystem ->
           "grey"

        Monkey ->
           "grey"

        Moocode ->
           "grey"

        MoonScript ->
           "grey"

        MQL4 ->
           "#62A8D6"

        MQL5 ->
           "#4A76B8"

        MTML ->
           "#b7e1f4"

        MUF ->
           "grey"

        Mupad ->
           "grey"

        Myghty ->
           "grey"

        NCL ->
           "#28431f"

        Nearley ->
           "#990000"

        Nemerle ->
           "#3d3c6e"

        NesC ->
           "#94B0C7"

        NetLinx ->
           "#0aa0ff"

        NetLinxERB ->
           "#747faa"

        NetLogo ->
           "#ff6375"

        NewLisp ->
           "#87AED7"

        Nim ->
           "#37775b"

        Nit ->
           "#009917"

        Nix ->
           "#7e7eff"

        NSIS ->
           "grey"

        Nu ->
           "#c9df40"

        NumPy ->
           "grey"

        ObjectiveC ->
           "#438eff"

        ObjectiveCPlusPlus ->
           "#6866fb"

        ObjectiveJ ->
           "#ff0c5a"

        OCaml ->
           "#3be133"

        Omgrofl ->
           "#cabbff"

        Ooc ->
           "#b0b77e"

        Opa ->
           "grey"

        Opal ->
           "#f7ede0"

        OpenCL ->
           "grey"

        OpenEdgeABL ->
           "grey"

        OpenRCrunscript ->
           "grey"

        OpenSCAD ->
           "grey"

        Ox ->
           "grey"

        Oxygene ->
           "#cdd0e3"

        Oz ->
           "#fab738"

        P4 ->
           "#7055b5"

        Pan ->
           "#cc0000"

        Papyrus ->
           "#6600cc"

        Parrot ->
           "#f3ca0a"

        ParrotAssembly ->
           "grey"

        ParrotInternalRepresentation ->
           "grey"

        Pascal ->
           "#E3F171"

        PAWN ->
           "#dbb284"

        Pep8 ->
           "#C76F5B"

        Perl ->
           "#0298c3"

        Perl6 ->
           "#0000fb"

        PHP ->
           "#4F5D95"

        PicoLisp ->
           "grey"

        PigLatin ->
           "#fcd7de"

        Pike ->
           "#005390"

        PLpgSQL ->
           "grey"

        PLSQL ->
           "#dad8d8"

        PogoScript ->
           "#d80074"

        Pony ->
           "grey"

        PostScript ->
           "#da291c"

        POVRaySDL ->
           "grey"

        PowerBuilder ->
           "#8f0f8d"

        PowerShell ->
           "#012456"

        Processing ->
           "#0096D8"

        Prolog ->
           "#74283c"

        PropellerSpin ->
           "#7fa2a7"

        Puppet ->
           "#302B6D"

        PureBasic ->
           "#5a6986"

        PureScript ->
           "#1D222D"

        Python ->
           "#3572A5"

        Pythonconsole ->
           "grey"

        QMake ->
           "grey"

        QML ->
           "#44a51c"

        R ->
           "#198CE7"

        Racket ->
           "#22228f"

        Ragel ->
           "#9d5200"

        RAML ->
           "#77d9fb"

        Rascal ->
           "#fffaa0"

        REALbasic ->
           "grey"

        Reason ->
           "grey"

        Rebol ->
           "#358a5b"

        Red ->
           "#f50000"

        Redcode ->
           "grey"

        RenPy ->
           "#ff7f7f"

        RenderScript ->
           "grey"

        REXX ->
           "grey"

        Ring ->
           "#0e60e3"

        RobotFramework ->
           "grey"

        Roff ->
           "#ecdebe"

        Rouge ->
           "#cc0088"

        Ruby ->
           "#701516"

        RUNOFF ->
           "#665a4e"

        Rust ->
           "#dea584"

        Sage ->
           "grey"

        SaltStack ->
           "#646464"

        SAS ->
           "#B34936"

        Scala ->
           "#c22d40"

        Scheme ->
           "#1e4aec"

        Scilab ->
           "grey"

        Self ->
           "#0579aa"

        ShaderLab ->
           "grey"

        Shell ->
           "#89e051"

        ShellSession ->
           "grey"

        Shen ->
           "#120F14"

        Slash ->
           "#007eff"

        Smali ->
           "grey"

        Smalltalk ->
           "#596706"

        Smarty ->
           "grey"

        SMT ->
           "grey"

        SourcePawn ->
           "#5c7611"

        SQF ->
           "#3F3F3F"

        SQLPL ->
           "grey"

        Squirrel ->
           "#800000"

        SRecodeTemplate ->
           "#348a34"

        Stan ->
           "#b2011d"

        StandardML ->
           "#dc566d"

        Stata ->
           "grey"

        SuperCollider ->
           "#46390b"

        Swift ->
           "#ffac45"

        SystemVerilog ->
           "#DAE1C2"

        Tcl ->
           "#e4cc98"

        Tcsh ->
           "grey"

        Terra ->
           "#00004c"

        TeX ->
           "#3D6117"

        Thrift ->
           "grey"

        TIProgram ->
           "#A0AA87"

        TLA ->
           "grey"

        Turing ->
           "#cf142b"

        TXL ->
           "grey"

        TypeScript ->
           "#2b7489"

        UnifiedParallelC ->
           "grey"

        UnixAssembly ->
           "grey"

        Uno ->
           "grey"

        UnrealScript ->
           "#a54c4d"

        UrWeb ->
           "grey"

        Vala ->
           "#fbe5cd"

        VCL ->
           "grey"

        Verilog ->
           "#b2b7f8"

        VHDL ->
           "#adb2cb"

        Vimscript ->
           "#199f4b"

        VisualBasic ->
           "#945db7"

        Volt ->
           "#1F1F1F"

        Vue ->
           "#2c3e50"

        WebAssembly ->
           "#04133b"

        WebIDL ->
           "grey"

        Wisp ->
           "#7582D1"

        X10 ->
           "#4B6BEF"

        XBase ->
           "#403a40"

        XC ->
           "#99DA07"

        Xojo ->
           "grey"

        XProc ->
           "grey"

        XQuery ->
           "#5232e7"

        XS ->
           "grey"

        XSLT ->
           "#EB8CEB"

        Xtend ->
           "grey"

        Yacc ->
           "#4B6C4B"

        Zephir ->
           "#118f9e"

        Zimpl ->
           "grey"

        Other ->
            "grey"
