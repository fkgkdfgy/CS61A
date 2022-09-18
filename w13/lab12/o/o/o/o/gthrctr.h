/************************************************/
/*                                              */
/*  Net Library System                          */
/*  Gathering Service                           */
/*  Copyright (C) Microsoft Corp., 1997         */
/*  All Rights Reserved                         */
/*                                              */
/*  File: GthrCntrs.h                           */
/*                                              */
/*  Gathering Service counters object           */
/*                                              */
/************************************************/

#define OBJECT_GTHRSVC                                          0

#define COUNTER_GTHRSVC_NOTIFICATION_SOURCES                    2  
#define COUNTER_GTHRSVC_EXTNOTIFICATIONS_RECEIVED               4  
#define COUNTER_GTHRSVC_EXTNOTIFICATIONS_RECEIVED_PER_SEC       6  
#define COUNTER_GTHRSVC_ADMIN_SOURCES                           8  
#define COUNTER_GTHRSVC_HEARTBEATS                              10 
#define COUNTER_GTHRSVC_HEARTBEATS_PER_SEC                      12 
#define COUNTER_GTHRSVC_ROBOT_THREADS                           14 
#define COUNTER_GTHRSVC_IDLE_THREADS                            16 
#define COUNTER_GTHRSVC_TRANSACTIONS_CACHED                     18 
#define COUNTER_GTHRSVC_PERFORMANCE_LEVEL                       20 
#define COUNTER_GTHRSVC_QUEUE_LENGTH                            22 
#define COUNTER_GTHRSVC_FILTER_PROCESSES                        24 
#define COUNTER_GTHRSVC_FILTER_PROCESSES_MAX                    26
#define COUNTER_GTHRSVC_FILTER_PROCESS_CREATED                  28 
#define COUNTER_GTHRSVC_TRANSACTIONS_DELAYED                    30 
#define COUNTER_GTHRSVC_SERVER_OBJECTS                          32 
#define COUNTER_GTHRSVC_SERVER_OBJECTS_CREATED                  34 
#define COUNTER_GTHRSVC_FILTER_OBJECTS                          36 
#define COUNTER_GTHRSVC_DOCUMENTS_FILTERED                      38 
#define COUNTER_GTHRSVC_DOCUMENTS_FILTERED_PER_SEC              40
#define COUNTER_GTHRSVC_TIMEOUTS                                42 
#define COUNTER_GTHRSVC_SERVERS_CURRENTLY_UNAVAILABLE           44 
#define COUNTER_GTHRSVC_SERVERS_UNAVAILABLE                     46 
#define COUNTER_GTHRSVC_THREADS_ACCESSING_NETWORK               48
#define COUNTER_GTHRSVC_THREADS_IN_PLUGINS                      50
#define COUNTER_GTHRSVC_FILTERED_SUCCESS                        52
#define COUNTER_GTHRSVC_FILTERED_SUCCESS_PER_SEC                54
#define COUNTER_GTHRSVC_TRANSACTIONS_DELAYED_RETRY              56
#define COUNTER_GTHRSVC_CACHED_WORD_BREAKERS                    58
#define COUNTER_GTHRSVC_CACHED_STEMMERS                         60
#define COUNTER_GTHRSVC_TOTALNOTIFICATIONS_RECEIVED             62  
#define COUNTER_GTHRSVC_TOTALNOTIFICATIONS_RECEIVED_PER_SEC     64  
#define COUNTER_GTHRSVC_IORATE_DETECTED                         66
#define COUNTER_GTHRSVC_BACKOFF_REASON                          68
#define COUNTER_GTHRSVC_THREADS_BLOCKED_ON_BACKOFF              70
