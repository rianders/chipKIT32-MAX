/************************************************************************/
/*																		*/
/*	uC32-MRF24WG.x                                                      */
/*																		*/
/*	MRF24WG WiFi interrupt and SPI configuration file 				    */
/*	Specific to the uC32 WiFiShield                                     */
/*																		*/
/************************************************************************/
/*	Author: 	Keith Vogel 											*/
/*	Copyright 2013, Digilent Inc.										*/
/************************************************************************/
/* 
*
* Copyright (c) 2013-2014, Digilent <www.digilentinc.com>
* Contact Digilent for the latest version.
*
* This program is free software; distributed under the terms of 
* BSD 3-clause license ("Revised BSD License", "New BSD License", or "Modified BSD License")
*
* Redistribution and use in source and binary forms, with or without modification,
* are permitted provided that the following conditions are met:
*
* 1.    Redistributions of source code must retain the above copyright notice, this
*        list of conditions and the following disclaimer.
* 2.    Redistributions in binary form must reproduce the above copyright notice,
*        this list of conditions and the following disclaimer in the documentation
*        and/or other materials provided with the distribution.
* 3.    Neither the name(s) of the above-listed copyright holder(s) nor the names
*        of its contributors may be used to endorse or promote products derived
*        from this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
* ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
* WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
* IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT,
* INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
* BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
* DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
* LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
* OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED
* OF THE POSSIBILITY OF SUCH DAMAGE.
*/
/************************************************************************/
/*  Revision History:													*/
/*																		*/
/*	10/16/2012(KeithV): Created											*/
/*																		*/
/************************************************************************/

#ifndef UC32-MRF24WG_X
#define UC32-MRF24WG_X

#include <p32xxxx.h>

#ifdef __cplusplus
extern "C" {
#endif

#define WF_INT              1
#define WF_SPI              2
#define WF_SPI_FREQ         10000000

#define WF_INT_TRIS         (TRISDbits.TRISD8)
#define WF_INT_IO           (PORTDbits.RD8)

#define WF_HIBERNATE_TRIS   (TRISDbits.TRISD5)
#define	WF_HIBERNATE_IO     (PORTDbits.RD5)

#define WF_RESET_TRIS       (TRISDbits.TRISD6)
#define WF_RESET_IO         (LATDbits.LATD6)

#define WF_CS_TRIS          (TRISGbits.TRISG9)
#define WF_CS_IO            (LATGbits.LATG9)

#include "SPIandINT.h"

#ifdef __cplusplus
}
#endif  // C++

#endif // UC32-MRF24WG_X
