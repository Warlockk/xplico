/* dispatch.h
 * Dispatch interface functions
 *
 * $Id: dispatch.h,v 1.3 2007/11/07 14:30:41 costa Exp $
 *
 * Xplico - Internet Traffic Decoder
 * By Gianluca Costa <g.costa@xplico.org>
 * Copyright 2007 Gianluca Costa & Andrea de Franceschi. Web: www.xplico.org
 *
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
 */


#ifndef __DISPATCH_H__
#define __DISPATCH_H__

#define DISP_INIT_FUN        "DispInit"
#define DISP_END_FUN         "DispEnd"
#define DISP_INDPEI_FUN      "DispInsPei"

int DispatchInit(const char *file_cfg);
int DispatchEnd(void);
int DispatchStatus(FILE *fp);
unsigned long DispatchPeiPending(void);


#endif /* __DISPATCH_H__ */
