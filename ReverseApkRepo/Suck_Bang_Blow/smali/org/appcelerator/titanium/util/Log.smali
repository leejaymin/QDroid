.class public Lorg/appcelerator/titanium/util/Log;
.super Ljava/lang/Object;
.source "Log.java"


# static fields
.field private static firstLog:J

.field private static lastLog:J


# instance fields
.field protected debug:Z

.field protected tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/appcelerator/titanium/util/Log;->lastLog:J

    .line 12
    sget-wide v0, Lorg/appcelerator/titanium/util/Log;->lastLog:J

    sput-wide v0, Lorg/appcelerator/titanium/util/Log;->firstLog:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0
    .parameter "tag"
    .parameter "debug"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/appcelerator/titanium/util/Log;->tag:Ljava/lang/String;

    .line 24
    iput-boolean p2, p0, Lorg/appcelerator/titanium/util/Log;->debug:Z

    .line 25
    return-void
.end method

.method public static declared-synchronized checkpoint(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 15
    const-class v0, Lorg/appcelerator/titanium/util/Log;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lorg/appcelerator/titanium/util/Log;->lastLog:J

    .line 16
    sget-wide v1, Lorg/appcelerator/titanium/util/Log;->lastLog:J

    sput-wide v1, Lorg/appcelerator/titanium/util/Log;->firstLog:J

    .line 17
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    monitor-exit v0

    return-void

    .line 15
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 71
    invoke-static {p1}, Lorg/appcelerator/titanium/util/Log;->onThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 72
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 80
    invoke-static {p1}, Lorg/appcelerator/titanium/util/Log;->onThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 81
    invoke-static {p0, p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 31
    sget-boolean v0, Lorg/appcelerator/titanium/util/TiConfig;->DEBUG:Z

    invoke-static {p0, p1, v0}, Lorg/appcelerator/titanium/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public static debug(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "debug"

    .prologue
    .line 38
    if-eqz p2, :cond_0

    .line 39
    invoke-static {p0, p1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 125
    invoke-static {p1}, Lorg/appcelerator/titanium/util/Log;->onThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 134
    invoke-static {p1}, Lorg/appcelerator/titanium/util/Log;->onThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 89
    invoke-static {p1}, Lorg/appcelerator/titanium/util/Log;->onThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 90
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 98
    invoke-static {p1}, Lorg/appcelerator/titanium/util/Log;->onThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-static {p0, p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method private static declared-synchronized onThread(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "msg"

    .prologue
    .line 144
    const-class v8, Lorg/appcelerator/titanium/util/Log;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 145
    .local v0, currentMillis:J
    sget-wide v9, Lorg/appcelerator/titanium/util/Log;->lastLog:J

    sub-long v2, v0, v9

    .line 146
    .local v2, elapsed:J
    sget-wide v9, Lorg/appcelerator/titanium/util/Log;->firstLog:J

    sub-long v6, v0, v9

    .line 147
    .local v6, total:J
    sput-wide v0, Lorg/appcelerator/titanium/util/Log;->lastLog:J

    .line 149
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v9, 0x100

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 150
    .local v5, sb:Ljava/lang/StringBuilder;
    const-string v9, "("

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, s:Ljava/lang/String;
    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit v8

    return-object v4

    .line 144
    .end local v0           #currentMillis:J
    .end local v2           #elapsed:J
    .end local v4           #s:Ljava/lang/String;
    .end local v5           #sb:Ljava/lang/StringBuilder;
    .end local v6           #total:J
    :catchall_0
    move-exception v9

    monitor-exit v8

    throw v9
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 53
    invoke-static {p1}, Lorg/appcelerator/titanium/util/Log;->onThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 62
    invoke-static {p1}, Lorg/appcelerator/titanium/util/Log;->onThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 63
    invoke-static {p0, p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 107
    invoke-static {p1}, Lorg/appcelerator/titanium/util/Log;->onThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 108
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 116
    invoke-static {p1}, Lorg/appcelerator/titanium/util/Log;->onThread(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public d(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 76
    iget-object v0, p0, Lorg/appcelerator/titanium/util/Log;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 85
    iget-object v0, p0, Lorg/appcelerator/titanium/util/Log;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public debug(Ljava/lang/String;)I
    .locals 2
    .parameter "msg"

    .prologue
    .line 45
    iget-object v0, p0, Lorg/appcelerator/titanium/util/Log;->tag:Ljava/lang/String;

    iget-boolean v1, p0, Lorg/appcelerator/titanium/util/Log;->debug:Z

    invoke-static {v0, p1, v1}, Lorg/appcelerator/titanium/util/Log;->debug(Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public varargs debugFormat(Ljava/lang/String;[Ljava/lang/Object;)I
    .locals 1
    .parameter "format"
    .parameter "args"

    .prologue
    .line 49
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/appcelerator/titanium/util/Log;->debug(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 130
    iget-object v0, p0, Lorg/appcelerator/titanium/util/Log;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 139
    iget-object v0, p0, Lorg/appcelerator/titanium/util/Log;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 94
    iget-object v0, p0, Lorg/appcelerator/titanium/util/Log;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public i(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 103
    iget-object v0, p0, Lorg/appcelerator/titanium/util/Log;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public v(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 58
    iget-object v0, p0, Lorg/appcelerator/titanium/util/Log;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public v(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 67
    iget-object v0, p0, Lorg/appcelerator/titanium/util/Log;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lorg/appcelerator/titanium/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method public w(Ljava/lang/String;)I
    .locals 1
    .parameter "msg"

    .prologue
    .line 112
    iget-object v0, p0, Lorg/appcelerator/titanium/util/Log;->tag:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public w(Ljava/lang/String;Ljava/lang/Throwable;)I
    .locals 1
    .parameter "msg"
    .parameter "t"

    .prologue
    .line 121
    iget-object v0, p0, Lorg/appcelerator/titanium/util/Log;->tag:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method
