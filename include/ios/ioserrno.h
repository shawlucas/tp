#ifndef __IOSERRNO_H__
#define __IOSERRNO_H__

#define IOS_ERROR_OK              0
#define IOS_ERROR_ACCESS         -1
#define IOS_ERROR_EXISTS         -2
#define IOS_ERROR_INTR           -3
#define IOS_ERROR_INVALID        -4
#define IOS_ERROR_MAX            -5
#define IOS_ERROR_NOEXISTS       -6
#define IOS_ERROR_QEMPTY         -7
#define IOS_ERROR_QFULL          -8
#define IOS_ERROR_UNKNOWN        -9
#define IOS_ERROR_NOTREADY       -10
#define IOS_ERROR_USB_ERR        -11
#define IOS_ERROR_SDIO_ERR       -12
#define IOS_ERROR_NOMEM          -13  /* Kernel memory exhausted */
#define IOS_ERROR_INVALID_ERRNO  -14  /* Leave this as last errno */

#endif /*__IOSERRNO_H__*/

