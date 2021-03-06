/*
 * Copyright (c) 2010-2011, Atheros Communications Inc.
 *
 * Permission to use, copy, modify, and/or distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */
#ifndef __CSUM_HW_H
#define __CSUM_HW_H

#include "atheros.h"

#define CHKSUM_ACC_BASE_ADDRESS		(ATH_APB_BASE + 0x400000)
#define CHKSUM_ACC_DMATX_CONTROL0	(CHKSUM_ACC_BASE_ADDRESS + 0x0000)
#define CHKSUM_ACC_DMATX_CONTROL1	(CHKSUM_ACC_BASE_ADDRESS + 0x0004)
#define CHKSUM_ACC_DMATX_CONTROL2	(CHKSUM_ACC_BASE_ADDRESS + 0x0008)
#define CHKSUM_ACC_DMATX_CONTROL3	(CHKSUM_ACC_BASE_ADDRESS + 0x000c)

#define CHKSUM_ACC_DMATX_DESC0		(CHKSUM_ACC_BASE_ADDRESS + 0x0010)
#define CHKSUM_ACC_DMATX_DESC1		(CHKSUM_ACC_BASE_ADDRESS + 0x0014)
#define CHKSUM_ACC_DMATX_DESC2		(CHKSUM_ACC_BASE_ADDRESS + 0x0018)
#define CHKSUM_ACC_DMATX_DESC3		(CHKSUM_ACC_BASE_ADDRESS + 0x001c)

#define CHKSUM_ACC_DMATX_DESC_STATUS 	(CHKSUM_ACC_BASE_ADDRESS + 0x0020)

#define CHKSUM_ACC_DMATX_ARB_CFG	(CHKSUM_ACC_BASE_ADDRESS + 0x0024)

#define CHKSUM_ACC_RR_PKTCNT01		(CHKSUM_ACC_BASE_ADDRESS + 0x0028)
#define CHKSUM_ACC_RR_PKTCNT23		(CHKSUM_ACC_BASE_ADDRESS + 0x002c)

#define CHKSUM_ACC_TXST_PKTCNT		(CHKSUM_ACC_BASE_ADDRESS + 0x0030)

#define CHKSUM_ACC_DMARX_CONTROL	(CHKSUM_ACC_BASE_ADDRESS + 0x0034)
#define CHKSUM_ACC_DMARX_DESC		(CHKSUM_ACC_BASE_ADDRESS + 0x0038)

#define CHKSUM_ACC_DMARX_DESC_STATUS 	(CHKSUM_ACC_BASE_ADDRESS + 0x003c)
#define CHKSUM_ACC_INTR			(CHKSUM_ACC_BASE_ADDRESS + 0x0040)
#define CHKSUM_ACC_IMASK		(CHKSUM_ACC_BASE_ADDRESS + 0x0044)
#define CHKSUM_ACC_ARB_BURST		(CHKSUM_ACC_BASE_ADDRESS + 0x0048)
#define CHKSUM_ACC_RESET_DMA		(CHKSUM_ACC_BASE_ADDRESS + 0x0050)
#define CHKSUM_CONFIG			(CHKSUM_ACC_BASE_ADDRESS + 0x0054)
#define CSUM_IRQ_NUM			0x5

#define CHKSUM_ACC_DMARX_ENABLE (1u)
#define CHKSUM_ACC_DMATX_ENABLE (1u)
#define CSUM_PKT_VOID (1u << 31)
#define CSUM_TX_EOF_MASK (1u << 27)
#define CSUM_TX_SOF_MASK (1u << 26)
#define CSUM_INTR_ENABLE (1u << 25)
#define CSUM_INTR_STATUS (1u << 30)
#define CSUM_OFFLOAD_TYPE_CSUM_ONLY (0)
#define CSUM_OFFLOAD_TYPE_WITH_CP (1u << 28)
#define DMA_ENABLED 1
#define SIZE_4K (4*1024)

#define CSUM_MAGIC 101
#define CSUM_FRAG _IO(CSUM_MAGIC, 0)
#define CSUM_DEFRAG _IO(CSUM_MAGIC, 1)
#define CSUM_WITHOUT_FRAG _IO(CSUM_MAGIC, 2)
#define CSUM_ONLY _IO(CSUM_MAGIC, 3)

/*Enabling and disabling of interrupts*/

#define CSUM_RX_INRT_MASK (1u << 3)
#define CSUM_TX_INRT_MASK (1u << 13)
#define CSUM_TX_BUSERR_INRT_MASK (1u << 6)
#define CSUM_RX_BUSERR_INRT_MASK (1u << 2)

#define CSUM_RX_INRT_STATUS (1u << 3)
#define CSUM_TX_INRT_STATUS (1u << 13)

#define CSUM_RX_DESC_INTR (1u << 2)
#define CSUM_TX_DESC_INTR (1u << 5)

struct node_info {
	unsigned int len;
	unsigned int actual;
	unsigned short checksum;
	char *buf;
};

struct info_packed{
	unsigned int flags:13;
	unsigned int pktSize:19;
};

union desc_info {
	struct info_packed xx;
	unsigned int yy;
};

struct descriptor {
	char *buf;
	union desc_info info;
	struct descriptor *next;
	unsigned int status;
};

#endif
