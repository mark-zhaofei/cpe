/*
 * Copyright (c) 2012 Qualcomm Atheros, Inc.
 * All rights reserved.
 * Qualcomm Atheros Confidential and Proprietary.
 *
 */
#ifndef _NAPT_HELPER_H
#define _NAPT_HELPER_H



#define USING_LINUX2631 1

#ifdef USING_LINUX2631

void
napt_ct_task_start(int (*task)(void*), const char *task_name);
void
napt_ct_task_stop(void);
int
napt_ct_task_should_stop(void);
void
napt_ct_task_sleep(int secs);
void
napt_ct_list_lock(void);
void
napt_ct_list_unlock(void);
uint32_t
napt_ct_list_iterate(uint32_t *hash, uint32_t *pos) ;
void
napt_ct_to_hw_entry(uint32_t ct_addr, void *napt);
void
napt_ct_aging_enable(uint32_t ct_addr);
void
napt_ct_aging_disable(uint32_t ct_addr);
int
napt_ct_aging_is_enable(uint32_t ct_addr);
uint64_t
napt_ct_pkts_get(uint32_t ct_addr);
int
napt_ct_type_is_nat(uint32_t ct_addr);
int
napt_ct_status_is_estab(uint32_t ct_addr);
uint32_t
napt_ct_priv_ip_get(uint32_t ct_addr);



#define NAPT_CT_TASK_START          napt_ct_task_start
#define NAPT_CT_TASK_STOP           napt_ct_task_stop
#define NAPT_CT_TASK_SHOULD_STOP    napt_ct_task_should_stop
#define NAPT_CT_TASK_SLEEP          napt_ct_task_sleep

#define NAPT_CT_LIST_LOCK           napt_ct_list_lock
#define NAPT_CT_LIST_UNLOCK         napt_ct_list_unlock
#define NAPT_CT_LIST_ITERATE        napt_ct_list_iterate

#define NAPT_CT_AGING_IS_ENABLE     napt_ct_aging_is_enable
#define NAPT_CT_AGING_ENABLE        napt_ct_aging_enable
#define NAPT_CT_AGING_DISABLE       napt_ct_aging_disable

#define NAPT_CT_TYPE_IS_NAT         napt_ct_type_is_nat
#define NAPT_CT_STATUS_IS_ESTAB     napt_ct_status_is_estab
#define NAPT_CT_PRIV_IP_GET         napt_ct_priv_ip_get
#define NAPT_CT_PKTS_GET            napt_ct_pkts_get
#define NAPT_CT_TO_HW_ENTRY         napt_ct_to_hw_entry


#else



#endif

//#define HNAT_DEBUG 1

#ifdef HNAT_DEBUG
#define HNAT_PRINTK(x...) aos_printk(x)
#else
#define HNAT_PRINTK(x...)
#endif

#endif
