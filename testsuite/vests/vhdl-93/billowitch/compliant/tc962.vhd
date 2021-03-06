
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc962.vhd,v 1.2 2001-10-26 16:30:02 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

ENTITY c06s03b00x00p03n01i00962ent IS
END c06s03b00x00p03n01i00962ent;

ARCHITECTURE c06s03b00x00p03n01i00962arch OF c06s03b00x00p03n01i00962ent IS

BEGIN
  TESTING: PROCESS
    type T1 is record
                 S1 : Bit ;
                 S2 : Integer;
               end record;
    type T2 is record
                 S11 : BIT ;
                 S12 : T1 ;
               end record;
    variable V1 : T2 ;
  BEGIN
    V1.S12.S2 := 10 ;  -- No_Failure_here
    wait for 10 ns;
    assert NOT( V1.S12.S2 = 10 )
      report "***PASSED TEST: c06s03b00x00p03n01i00962"
      severity NOTE;
    assert ( V1.S12.S2 = 10 )
      report "***FAILED TEST: c06s03b00x00p03n01i00962 - The suffix of a selected name can be a simple name."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c06s03b00x00p03n01i00962arch;
