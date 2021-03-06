{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
{-# OPTIONS_HADDOCK prune #-}
{-# LANGUAGE CPP, TemplateHaskell #-}
-----------------------------------------------------------------------------
-- |
-- Module      :  Data.TypeLevel.Num.Aliases
-- Copyright   :  (c) 2008 Alfonso Acosta, Oleg Kiselyov, Wolfgang Jeltsch
--                    and KTH's SAM group 
-- License     :  BSD-style (see the file LICENSE)
-- 
-- Maintainer  :  alfonso.acosta@gmail.com
-- Stability   :  experimental
-- Portability :  non-portable (Template Haskell)
--
-- Type synonym aliases of type-level numerals and 
-- their value-level reflecting functions. Generated for user convenience.
-- 
-- Aliases are generated using binary, octal, decimal and hexadecimal bases.
-- Available aliases cover binaries up to b10000000000, octals up to
-- o10000, decimals up to d5000 and hexadecimals up to h1000 
----------------------------------------------------------------------------
module Data.TypeLevel.Num.Aliases where

import Language.Haskell.TH
import Data.TypeLevel.Num.Aliases.TH (genAliases)


$(do runIO (putStrLn "Generating and compiling a zillion numerical type aliases, this might take a while") 
#if defined(SLIM)
     genAliases 16 64 256 64
#else
     genAliases 1024 4096 5000 4096
#endif
 )


