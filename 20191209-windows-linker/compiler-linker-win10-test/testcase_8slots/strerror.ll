; ModuleID = './testcase_8slots/string\strerror.c'
target datalayout = "e-m:m-p:32:32-i8:8:32-i16:16:32-i64:64-n32-S64"
target triple = "dsp"

@.str = private unnamed_addr constant [10 x i8] c"No errors\00", align 1
@.str1 = private unnamed_addr constant [24 x i8] c"Operation not permitted\00", align 1
@.str2 = private unnamed_addr constant [26 x i8] c"No such file or directory\00", align 1
@.str3 = private unnamed_addr constant [24 x i8] c"Interrupted system call\00", align 1
@.str4 = private unnamed_addr constant [19 x i8] c"Input/output error\00", align 1
@.str5 = private unnamed_addr constant [20 x i8] c"Bad file descriptor\00", align 1
@.str6 = private unnamed_addr constant [23 x i8] c"Cannot allocate memory\00", align 1
@.str7 = private unnamed_addr constant [18 x i8] c"Permission denied\00", align 1
@.str8 = private unnamed_addr constant [12 x i8] c"Bad address\00", align 1
@.str9 = private unnamed_addr constant [22 x i8] c"Block device required\00", align 1
@.str10 = private unnamed_addr constant [12 x i8] c"Device busy\00", align 1
@.str11 = private unnamed_addr constant [12 x i8] c"File exists\00", align 1
@.str12 = private unnamed_addr constant [18 x i8] c"Cross-device link\00", align 1
@.str13 = private unnamed_addr constant [34 x i8] c"Operation not supported by device\00", align 1
@.str14 = private unnamed_addr constant [16 x i8] c"Not a directory\00", align 1
@.str15 = private unnamed_addr constant [15 x i8] c"Is a directory\00", align 1
@.str16 = private unnamed_addr constant [17 x i8] c"Invalid argument\00", align 1
@.str17 = private unnamed_addr constant [30 x i8] c"Too many open files in system\00", align 1
@.str18 = private unnamed_addr constant [20 x i8] c"Too many open files\00", align 1
@.str19 = private unnamed_addr constant [17 x i8] c"Not a typewriter\00", align 1
@.str20 = private unnamed_addr constant [15 x i8] c"Text file busy\00", align 1
@.str21 = private unnamed_addr constant [15 x i8] c"File too large\00", align 1
@.str22 = private unnamed_addr constant [24 x i8] c"No space left on device\00", align 1
@.str23 = private unnamed_addr constant [13 x i8] c"Illegal seek\00", align 1
@.str24 = private unnamed_addr constant [22 x i8] c"Read-only file system\00", align 1
@.str25 = private unnamed_addr constant [15 x i8] c"Too many links\00", align 1
@.str26 = private unnamed_addr constant [22 x i8] c"Illegal byte sequence\00", align 1
@.str27 = private unnamed_addr constant [33 x i8] c"Numerical argument out of domain\00", align 1
@.str28 = private unnamed_addr constant [17 x i8] c"Result too large\00", align 1
@.str29 = private unnamed_addr constant [26 x i8] c"No data (for no delay io)\00", align 1
@.str30 = private unnamed_addr constant [14 x i8] c"Timer expired\00", align 1
@.str31 = private unnamed_addr constant [26 x i8] c"The link has been severed\00", align 1
@.str32 = private unnamed_addr constant [33 x i8] c"Resource temporarily unavailable\00", align 1
@.str33 = private unnamed_addr constant [34 x i8] c"Too many levels of symbolic links\00", align 1
@.str34 = private unnamed_addr constant [19 x i8] c"File name too long\00", align 1
@.str35 = private unnamed_addr constant [20 x i8] c"Directory not empty\00", align 1
@.str36 = private unnamed_addr constant [25 x i8] c"Function not implemented\00", align 1
@.str37 = private unnamed_addr constant [34 x i8] c"Inappropriate file type or format\00", align 1
@.str38 = private unnamed_addr constant [26 x i8] c"No buffer space available\00", align 1
@.str39 = private unnamed_addr constant [27 x i8] c"No message of desired type\00", align 1
@.str40 = private unnamed_addr constant [18 x i8] c"Arg list too long\00", align 1
@.str41 = private unnamed_addr constant [23 x i8] c"Address already in use\00", align 1
@.str42 = private unnamed_addr constant [31 x i8] c"Can't assign requested address\00", align 1
@.str43 = private unnamed_addr constant [48 x i8] c"Address family not supported by protocol family\00", align 1
@.str44 = private unnamed_addr constant [25 x i8] c"Socket already connected\00", align 1
@.str45 = private unnamed_addr constant [12 x i8] c"Bad message\00", align 1
@.str46 = private unnamed_addr constant [19 x i8] c"Operation canceled\00", align 1
@.str47 = private unnamed_addr constant [12 x i8] c"No children\00", align 1
@.str48 = private unnamed_addr constant [33 x i8] c"Software caused connection abort\00", align 1
@.str49 = private unnamed_addr constant [19 x i8] c"Connection refused\00", align 1
@.str50 = private unnamed_addr constant [25 x i8] c"Connection reset by peer\00", align 1
@.str51 = private unnamed_addr constant [9 x i8] c"Deadlock\00", align 1
@.str52 = private unnamed_addr constant [29 x i8] c"Destination address required\00", align 1
@.str53 = private unnamed_addr constant [20 x i8] c"Host is unreachable\00", align 1
@.str54 = private unnamed_addr constant [19 x i8] c"Identifier removed\00", align 1
@.str55 = private unnamed_addr constant [31 x i8] c"Connection already in progress\00", align 1
@.str56 = private unnamed_addr constant [28 x i8] c"Socket is already connected\00", align 1
@.str57 = private unnamed_addr constant [17 x i8] c"Message too long\00", align 1
@.str58 = private unnamed_addr constant [36 x i8] c"Network interface is not configured\00", align 1
@.str59 = private unnamed_addr constant [44 x i8] c"Network dropped connection because of reset\00", align 1
@.str60 = private unnamed_addr constant [23 x i8] c"Network is unreachable\00", align 1
@.str61 = private unnamed_addr constant [18 x i8] c"Exec format error\00", align 1
@.str62 = private unnamed_addr constant [8 x i8] c"No lock\00", align 1
@.str63 = private unnamed_addr constant [23 x i8] c"Protocol not available\00", align 1
@.str64 = private unnamed_addr constant [20 x i8] c"No stream resources\00", align 1
@.str65 = private unnamed_addr constant [13 x i8] c"Not a stream\00", align 1
@.str66 = private unnamed_addr constant [24 x i8] c"Socket is not connected\00", align 1
@.str67 = private unnamed_addr constant [22 x i8] c"State not recoverable\00", align 1
@.str68 = private unnamed_addr constant [31 x i8] c"Socket operation on non-socket\00", align 1
@.str69 = private unnamed_addr constant [34 x i8] c"Operation not supported on socket\00", align 1
@.str70 = private unnamed_addr constant [26 x i8] c"No such device or address\00", align 1
@.str71 = private unnamed_addr constant [42 x i8] c"Value too large to be stored in data type\00", align 1
@.str72 = private unnamed_addr constant [20 x i8] c"Previous owner died\00", align 1
@.str73 = private unnamed_addr constant [12 x i8] c"Broken pipe\00", align 1
@.str74 = private unnamed_addr constant [15 x i8] c"Protocol error\00", align 1
@.str75 = private unnamed_addr constant [17 x i8] c"Unknown protocol\00", align 1
@.str76 = private unnamed_addr constant [31 x i8] c"Protocol wrong type for socket\00", align 1
@.str77 = private unnamed_addr constant [16 x i8] c"No such process\00", align 1
@.str78 = private unnamed_addr constant [21 x i8] c"Connection timed out\00", align 1
@.str79 = private unnamed_addr constant [22 x i8] c"Operation would block\00", align 1
@.str80 = private unnamed_addr constant [14 x i8] c"Unknown error\00", align 1

; Function Attrs: nounwind
define i8* @strerror(i32 %errnum) #0 {
entry:
  %errnum.addr = alloca i32, align 4
  %s = alloca i8*, align 4
  store i32 %errnum, i32* %errnum.addr, align 4
  %0 = load i32* %errnum.addr, align 4
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb2
    i32 3, label %sw.bb3
    i32 4, label %sw.bb4
    i32 5, label %sw.bb5
    i32 6, label %sw.bb6
    i32 7, label %sw.bb7
    i32 8, label %sw.bb8
    i32 9, label %sw.bb9
    i32 10, label %sw.bb10
    i32 11, label %sw.bb11
    i32 12, label %sw.bb12
    i32 13, label %sw.bb13
    i32 14, label %sw.bb14
    i32 15, label %sw.bb15
    i32 16, label %sw.bb16
    i32 17, label %sw.bb17
    i32 18, label %sw.bb18
    i32 19, label %sw.bb19
    i32 20, label %sw.bb20
    i32 21, label %sw.bb21
    i32 22, label %sw.bb22
    i32 23, label %sw.bb23
    i32 24, label %sw.bb24
    i32 25, label %sw.bb25
    i32 26, label %sw.bb26
    i32 27, label %sw.bb27
    i32 28, label %sw.bb28
    i32 29, label %sw.bb29
    i32 30, label %sw.bb30
    i32 31, label %sw.bb31
    i32 32, label %sw.bb32
    i32 33, label %sw.bb33
    i32 34, label %sw.bb34
    i32 35, label %sw.bb35
    i32 36, label %sw.bb36
    i32 37, label %sw.bb37
    i32 38, label %sw.bb38
    i32 39, label %sw.bb39
    i32 40, label %sw.bb40
    i32 41, label %sw.bb41
    i32 42, label %sw.bb42
    i32 43, label %sw.bb43
    i32 44, label %sw.bb44
    i32 45, label %sw.bb45
    i32 46, label %sw.bb46
    i32 47, label %sw.bb47
    i32 48, label %sw.bb48
    i32 49, label %sw.bb49
    i32 50, label %sw.bb50
    i32 51, label %sw.bb51
    i32 52, label %sw.bb52
    i32 53, label %sw.bb53
    i32 54, label %sw.bb54
    i32 55, label %sw.bb55
    i32 56, label %sw.bb56
    i32 57, label %sw.bb57
    i32 58, label %sw.bb58
    i32 59, label %sw.bb59
    i32 60, label %sw.bb60
    i32 61, label %sw.bb61
    i32 62, label %sw.bb62
    i32 63, label %sw.bb63
    i32 64, label %sw.bb64
    i32 65, label %sw.bb65
    i32 66, label %sw.bb66
    i32 67, label %sw.bb67
    i32 68, label %sw.bb68
    i32 69, label %sw.bb69
    i32 70, label %sw.bb70
    i32 71, label %sw.bb71
    i32 72, label %sw.bb72
    i32 73, label %sw.bb73
    i32 74, label %sw.bb74
    i32 75, label %sw.bb75
    i32 76, label %sw.bb76
    i32 77, label %sw.bb77
    i32 78, label %sw.bb78
    i32 79, label %sw.bb79
    i32 80, label %sw.bb80
  ]

sw.bb:                                            ; preds = %entry
  store i8* getelementptr inbounds ([10 x i8]* @.str, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8]* @.str1, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  store i8* getelementptr inbounds ([26 x i8]* @.str2, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8]* @.str3, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8]* @.str4, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8]* @.str5, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8]* @.str6, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8]* @.str7, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb8:                                           ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8]* @.str8, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8]* @.str9, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb10:                                          ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8]* @.str10, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8]* @.str11, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb12:                                          ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8]* @.str12, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  store i8* getelementptr inbounds ([34 x i8]* @.str13, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8]* @.str14, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb15:                                          ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8]* @.str15, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8]* @.str16, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb17:                                          ; preds = %entry
  store i8* getelementptr inbounds ([30 x i8]* @.str17, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb18:                                          ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8]* @.str18, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb19:                                          ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8]* @.str19, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8]* @.str20, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb21:                                          ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8]* @.str21, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb22:                                          ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8]* @.str22, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8]* @.str23, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8]* @.str24, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8]* @.str25, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb26:                                          ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8]* @.str26, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb27:                                          ; preds = %entry
  store i8* getelementptr inbounds ([33 x i8]* @.str27, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb28:                                          ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8]* @.str28, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb29:                                          ; preds = %entry
  store i8* getelementptr inbounds ([26 x i8]* @.str29, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8]* @.str30, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb31:                                          ; preds = %entry
  store i8* getelementptr inbounds ([26 x i8]* @.str31, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb32:                                          ; preds = %entry
  store i8* getelementptr inbounds ([33 x i8]* @.str32, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb33:                                          ; preds = %entry
  store i8* getelementptr inbounds ([34 x i8]* @.str33, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb34:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8]* @.str34, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8]* @.str35, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb36:                                          ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8]* @.str36, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb37:                                          ; preds = %entry
  store i8* getelementptr inbounds ([34 x i8]* @.str37, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb38:                                          ; preds = %entry
  store i8* getelementptr inbounds ([26 x i8]* @.str38, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb39:                                          ; preds = %entry
  store i8* getelementptr inbounds ([27 x i8]* @.str39, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb40:                                          ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8]* @.str40, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb41:                                          ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8]* @.str41, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb42:                                          ; preds = %entry
  store i8* getelementptr inbounds ([31 x i8]* @.str42, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb43:                                          ; preds = %entry
  store i8* getelementptr inbounds ([48 x i8]* @.str43, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb44:                                          ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8]* @.str44, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb45:                                          ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8]* @.str45, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb46:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8]* @.str46, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb47:                                          ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8]* @.str47, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb48:                                          ; preds = %entry
  store i8* getelementptr inbounds ([33 x i8]* @.str48, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb49:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8]* @.str49, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb50:                                          ; preds = %entry
  store i8* getelementptr inbounds ([25 x i8]* @.str50, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb51:                                          ; preds = %entry
  store i8* getelementptr inbounds ([9 x i8]* @.str51, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb52:                                          ; preds = %entry
  store i8* getelementptr inbounds ([29 x i8]* @.str52, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb53:                                          ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8]* @.str53, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb54:                                          ; preds = %entry
  store i8* getelementptr inbounds ([19 x i8]* @.str54, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb55:                                          ; preds = %entry
  store i8* getelementptr inbounds ([31 x i8]* @.str55, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb56:                                          ; preds = %entry
  store i8* getelementptr inbounds ([28 x i8]* @.str56, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb57:                                          ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8]* @.str57, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  store i8* getelementptr inbounds ([36 x i8]* @.str58, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb59:                                          ; preds = %entry
  store i8* getelementptr inbounds ([44 x i8]* @.str59, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb60:                                          ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8]* @.str60, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb61:                                          ; preds = %entry
  store i8* getelementptr inbounds ([18 x i8]* @.str61, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb62:                                          ; preds = %entry
  store i8* getelementptr inbounds ([8 x i8]* @.str62, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb63:                                          ; preds = %entry
  store i8* getelementptr inbounds ([23 x i8]* @.str63, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb64:                                          ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8]* @.str64, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb65:                                          ; preds = %entry
  store i8* getelementptr inbounds ([13 x i8]* @.str65, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb66:                                          ; preds = %entry
  store i8* getelementptr inbounds ([24 x i8]* @.str66, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb67:                                          ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8]* @.str67, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb68:                                          ; preds = %entry
  store i8* getelementptr inbounds ([31 x i8]* @.str68, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb69:                                          ; preds = %entry
  store i8* getelementptr inbounds ([34 x i8]* @.str69, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb70:                                          ; preds = %entry
  store i8* getelementptr inbounds ([26 x i8]* @.str70, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb71:                                          ; preds = %entry
  store i8* getelementptr inbounds ([34 x i8]* @.str69, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb72:                                          ; preds = %entry
  store i8* getelementptr inbounds ([42 x i8]* @.str71, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb73:                                          ; preds = %entry
  store i8* getelementptr inbounds ([20 x i8]* @.str72, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb74:                                          ; preds = %entry
  store i8* getelementptr inbounds ([12 x i8]* @.str73, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb75:                                          ; preds = %entry
  store i8* getelementptr inbounds ([15 x i8]* @.str74, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb76:                                          ; preds = %entry
  store i8* getelementptr inbounds ([17 x i8]* @.str75, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb77:                                          ; preds = %entry
  store i8* getelementptr inbounds ([31 x i8]* @.str76, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb78:                                          ; preds = %entry
  store i8* getelementptr inbounds ([16 x i8]* @.str77, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb79:                                          ; preds = %entry
  store i8* getelementptr inbounds ([21 x i8]* @.str78, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.bb80:                                          ; preds = %entry
  store i8* getelementptr inbounds ([22 x i8]* @.str79, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  store i8* getelementptr inbounds ([14 x i8]* @.str80, i32 0, i32 0), i8** %s, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb80, %sw.bb79, %sw.bb78, %sw.bb77, %sw.bb76, %sw.bb75, %sw.bb74, %sw.bb73, %sw.bb72, %sw.bb71, %sw.bb70, %sw.bb69, %sw.bb68, %sw.bb67, %sw.bb66, %sw.bb65, %sw.bb64, %sw.bb63, %sw.bb62, %sw.bb61, %sw.bb60, %sw.bb59, %sw.bb58, %sw.bb57, %sw.bb56, %sw.bb55, %sw.bb54, %sw.bb53, %sw.bb52, %sw.bb51, %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb47, %sw.bb46, %sw.bb45, %sw.bb44, %sw.bb43, %sw.bb42, %sw.bb41, %sw.bb40, %sw.bb39, %sw.bb38, %sw.bb37, %sw.bb36, %sw.bb35, %sw.bb34, %sw.bb33, %sw.bb32, %sw.bb31, %sw.bb30, %sw.bb29, %sw.bb28, %sw.bb27, %sw.bb26, %sw.bb25, %sw.bb24, %sw.bb23, %sw.bb22, %sw.bb21, %sw.bb20, %sw.bb19, %sw.bb18, %sw.bb17, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb12, %sw.bb11, %sw.bb10, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb1, %sw.bb
  %1 = load i8** %s, align 4
  ret i8* %1
}

attributes #0 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.0 (tags/RELEASE_350/final)"}
