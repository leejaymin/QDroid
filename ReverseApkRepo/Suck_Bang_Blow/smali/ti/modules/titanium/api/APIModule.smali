.class public Lti/modules/titanium/api/APIModule;
.super Lorg/appcelerator/kroll/KrollModule;
.source "APIModule.java"


# static fields
.field public static final CRITICAL:I = 0x7

.field public static final DEBUG:I = 0x2

.field public static final ERROR:I = 0x6

.field public static final FATAL:I = 0x8

.field public static final INFO:I = 0x3

.field private static final LCAT:Ljava/lang/String; = "TiAPI"

.field public static final NOTICE:I = 0x4

.field public static final TRACE:I = 0x1

.field public static final WARN:I = 0x5


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/appcelerator/kroll/KrollModule;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 30
    return-void
.end method

.method private toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter "msg"

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    const-string v0, "null"

    .line 36
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public critical(Ljava/lang/Object;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 71
    const-string v0, "TiAPI"

    invoke-direct {p0, p1}, Lti/modules/titanium/api/APIModule;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public debug(Ljava/lang/Object;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 41
    const-string v0, "TiAPI"

    invoke-direct {p0, p1}, Lti/modules/titanium/api/APIModule;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    return-void
.end method

.method public error(Ljava/lang/Object;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 56
    const-string v0, "TiAPI"

    invoke-direct {p0, p1}, Lti/modules/titanium/api/APIModule;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return-void
.end method

.method public fatal(Ljava/lang/Object;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 76
    const-string v0, "TiAPI"

    invoke-direct {p0, p1}, Lti/modules/titanium/api/APIModule;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method public info(Ljava/lang/Object;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 46
    const-string v0, "TiAPI"

    invoke-direct {p0, p1}, Lti/modules/titanium/api/APIModule;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    return-void
.end method

.method public internalLog(ILjava/lang/String;)V
    .locals 3
    .parameter "severity"
    .parameter "msg"

    .prologue
    const/4 v2, 0x5

    const-string v1, "TiAPI"

    .line 110
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 112
    const-string v0, "TiAPI"

    invoke-static {v1, p2}, Lorg/appcelerator/titanium/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :goto_0
    return-void

    .line 114
    :cond_0
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    .line 116
    const-string v0, "TiAPI"

    invoke-static {v1, p2}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 118
    :cond_1
    if-ge p1, v2, :cond_2

    .line 120
    const-string v0, "TiAPI"

    invoke-static {v1, p2}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 122
    :cond_2
    if-ne p1, v2, :cond_3

    .line 124
    const-string v0, "TiAPI"

    invoke-static {v1, p2}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 128
    :cond_3
    const-string v0, "TiAPI"

    invoke-static {v1, p2}, Lorg/appcelerator/titanium/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public log(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .parameter "level"
    .parameter "msg"

    .prologue
    .line 82
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, ulevel:Ljava/lang/String;
    const/4 v0, 0x3

    .line 85
    .local v0, severity:I
    const-string v2, "TRACE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 105
    .end local p2
    :goto_0
    invoke-direct {p0, p2}, Lti/modules/titanium/api/APIModule;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lti/modules/titanium/api/APIModule;->internalLog(ILjava/lang/String;)V

    .line 106
    return-void

    .line 87
    .restart local p2
    :cond_0
    const-string v2, "DEBUG"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 88
    const/4 v0, 0x2

    goto :goto_0

    .line 89
    :cond_1
    const-string v2, "INFO"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 90
    const/4 v0, 0x3

    goto :goto_0

    .line 91
    :cond_2
    const-string v2, "NOTICE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 92
    const/4 v0, 0x4

    goto :goto_0

    .line 93
    :cond_3
    const-string v2, "WARN"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 94
    const/4 v0, 0x5

    goto :goto_0

    .line 95
    :cond_4
    const-string v2, "ERROR"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 96
    const/4 v0, 0x6

    goto :goto_0

    .line 97
    :cond_5
    const-string v2, "CRITICAL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 98
    const/4 v0, 0x7

    goto :goto_0

    .line 99
    :cond_6
    const-string v2, "FATAL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 100
    const/16 v0, 0x8

    goto :goto_0

    .line 102
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .local p2, msg:Ljava/lang/String;
    goto :goto_0
.end method

.method public notice(Ljava/lang/Object;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 66
    const-string v0, "TiAPI"

    invoke-direct {p0, p1}, Lti/modules/titanium/api/APIModule;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method

.method public trace(Ljava/lang/Object;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 61
    const-string v0, "TiAPI"

    invoke-direct {p0, p1}, Lti/modules/titanium/api/APIModule;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-void
.end method

.method public warn(Ljava/lang/Object;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 51
    const-string v0, "TiAPI"

    invoke-direct {p0, p1}, Lti/modules/titanium/api/APIModule;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/appcelerator/titanium/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method
