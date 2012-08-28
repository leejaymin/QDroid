.class public Lcom/adfonic/android/utils/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static AD_REQUEST_LOGGING_ENABLED:Z = false

.field private static final ERROR:I = 0x6

.field private static final INFO:I = 0x2

.field private static final PRODUCTION_MODE:Z = false

.field public static final TAG:Ljava/lang/String; = "Adfonic"

.field private static final VERBOSE:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adfonic/android/utils/Log;->AD_REQUEST_LOGGING_ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adRequestDetails(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 115
    :try_start_0
    sget-boolean v0, Lcom/adfonic/android/utils/Log;->AD_REQUEST_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/adfonic/android/utils/Log;->verboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    const-string v0, "Adfonic"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static adRequestSummary(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 129
    :try_start_0
    sget-boolean v0, Lcom/adfonic/android/utils/Log;->AD_REQUEST_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 130
    const-string v0, "Adfonic"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 132
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 59
    :try_start_0
    const-string v0, "Adfonic"

    invoke-static {p0}, Lcom/adfonic/android/utils/Log;->getDetailedLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 67
    :try_start_0
    const-string v0, "Adfonic"

    invoke-static {p0}, Lcom/adfonic/android/utils/Log;->getDetailedLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 68
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static errorLoggingEnabled()Z
    .locals 3

    .prologue
    .line 51
    :try_start_0
    const-string v1, "Adfonic"

    const/4 v2, 0x6

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 53
    .local v0, re:Ljava/lang/Throwable;
    :goto_0
    return v1

    .line 52
    .end local v0           #re:Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 53
    .restart local v0       #re:Ljava/lang/Throwable;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private static getDetailedLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "msg"

    .prologue
    .line 19
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/adfonic/android/utils/Log;->getDetailedLog(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getDetailedLog(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "msg"
    .parameter "depth"

    .prologue
    .line 26
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 27
    .local v0, current:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    aget-object v2, v3, p1

    .line 28
    .local v2, trace:Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, filename:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 91
    :try_start_0
    const-string v0, "Adfonic"

    invoke-static {p0}, Lcom/adfonic/android/utils/Log;->getDetailedLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static infoLoggingEnabled()Z
    .locals 3

    .prologue
    .line 43
    :try_start_0
    const-string v1, "Adfonic"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 45
    .local v0, re:Ljava/lang/Throwable;
    :goto_0
    return v1

    .line 44
    .end local v0           #re:Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 45
    .restart local v0       #re:Ljava/lang/Throwable;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static setAdLoggingEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 106
    sput-boolean p0, Lcom/adfonic/android/utils/Log;->AD_REQUEST_LOGGING_ENABLED:Z

    .line 107
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 83
    :try_start_0
    const-string v0, "Adfonic"

    invoke-static {p0}, Lcom/adfonic/android/utils/Log;->getDetailedLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static verboseLoggingEnabled()Z
    .locals 3

    .prologue
    .line 35
    :try_start_0
    const-string v1, "Adfonic"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 37
    .local v0, re:Ljava/lang/Throwable;
    :goto_0
    return v1

    .line 36
    .end local v0           #re:Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 37
    .restart local v0       #re:Ljava/lang/Throwable;
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 99
    :try_start_0
    const-string v0, "Adfonic"

    invoke-static {p0}, Lcom/adfonic/android/utils/Log;->getDetailedLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 75
    :try_start_0
    const-string v0, "Adfonic"

    invoke-static {p0}, Lcom/adfonic/android/utils/Log;->getDetailedLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v0

    goto :goto_0
.end method
