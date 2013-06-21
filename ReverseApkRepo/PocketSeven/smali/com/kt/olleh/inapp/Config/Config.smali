.class public Lcom/kt/olleh/inapp/Config/Config;
.super Ljava/lang/Object;
.source "Config.java"


# static fields
.field public static final B007:Ljava/lang/String; = "B007"

.field public static final B007_msg:Ljava/lang/String; = "\uad6c\ub9e4\ud55c\ub3c4\ub97c \ucd08\uacfc\ud558\uc5ec \ub354 \uc774\uc0c1 \uad6c\ub9e4\ud558\uc2e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

.field public static final B009:Ljava/lang/String; = "B009"

.field public static final B009_msg:Ljava/lang/String; = "\uc77c\ubcc4 \uad6c\ub9e4\ud55c\ub3c4\ub97c \ucd08\uacfc\ud558\uc5ec \ub354 \uc774\uc0c1 \uad6c\ub9e4\ud558\uc2e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

.field public static final B010:Ljava/lang/String; = "B010"

.field public static final B010_msg:Ljava/lang/String; = "\uc6d4\ubcc4 \uad6c\ub9e4\ud55c\ub3c4\ub97c \ucd08\uacfc\ud558\uc5ec \ub354 \uc774\uc0c1 \uad6c\ub9e4\ud558\uc2e4 \uc218 \uc5c6\uc2b5\ub2c8\ub2e4."

.field public static final B011:Ljava/lang/String; = "B011"

.field public static final CONTENT_URI:Ljava/lang/String; = "content://com.kt.olleh.app.manager.inapp/inapp"

.field public static DEBUG:Z = false

.field public static Density:F = 0.0f

.field public static final INAPP_VERSION:Ljava/lang/String; = "V1.6.0"

.field public static final RS_INAPP_URL:Ljava/lang/String; = "http://hybrid.olleh.com/hybrid/appMy?tab=CERT"

.field public static TAG:Ljava/lang/String; = null

.field public static final TB_INAPP_URL:Ljava/lang/String; = "http://221.148.243.100/hybrid2/appMy?tab=CERT"

.field public static VERSION:Ljava/lang/String; = null

.field public static final bIsStandAlone:Z = false

.field public static bTBserver:Z = false

.field public static final iLibSetting:I = 0x0

.field public static isTimerRunning:Z = false

.field public static final strFileName:Ljava/lang/String; = "inapp.txt"

.field public static final strSaveFilePath:Ljava/lang/String; = "/data/"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    const-string v0, "Config"

    sput-object v0, Lcom/kt/olleh/inapp/Config/Config;->TAG:Ljava/lang/String;

    .line 17
    sput-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    .line 25
    sput-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->bTBserver:Z

    .line 31
    const/high16 v0, 0x3f80

    sput v0, Lcom/kt/olleh/inapp/Config/Config;->Density:F

    .line 53
    sput-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->isTimerRunning:Z

    .line 7
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LogD(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "content"

    .prologue
    .line 58
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 61
    .local v0, str:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 63
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 66
    sget-object v1, Lcom/kt/olleh/inapp/Config/Config;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .end local v0           #str:Ljava/lang/StringBuffer;
    :cond_0
    return-void
.end method

.method public static LogD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "title"
    .parameter "content"
    .parameter "tr"

    .prologue
    .line 115
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 117
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 118
    .local v0, str:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    sget-object v1, Lcom/kt/olleh/inapp/Config/Config;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    .end local v0           #str:Ljava/lang/StringBuffer;
    :cond_0
    return-void
.end method

.method public static LogE(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "content"

    .prologue
    .line 87
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 90
    .local v0, str:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 91
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 93
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    sget-object v1, Lcom/kt/olleh/inapp/Config/Config;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0           #str:Ljava/lang/StringBuffer;
    :cond_0
    return-void
.end method

.method public static LogE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "title"
    .parameter "content"
    .parameter "tr"

    .prologue
    .line 144
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 146
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 147
    .local v0, str:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 148
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 149
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    sget-object v1, Lcom/kt/olleh/inapp/Config/Config;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    .end local v0           #str:Ljava/lang/StringBuffer;
    :cond_0
    return-void
.end method

.method public static LogI(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "content"

    .prologue
    .line 73
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 75
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v0, str:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    sget-object v1, Lcom/kt/olleh/inapp/Config/Config;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .end local v0           #str:Ljava/lang/StringBuffer;
    :cond_0
    return-void
.end method

.method public static LogI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "title"
    .parameter "content"
    .parameter "tr"

    .prologue
    .line 130
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 132
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 133
    .local v0, str:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 134
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 135
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 136
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    sget-object v1, Lcom/kt/olleh/inapp/Config/Config;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 140
    .end local v0           #str:Ljava/lang/StringBuffer;
    :cond_0
    return-void
.end method

.method public static LogW(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "content"

    .prologue
    .line 101
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    .local v0, str:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    sget-object v1, Lcom/kt/olleh/inapp/Config/Config;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    .end local v0           #str:Ljava/lang/StringBuffer;
    :cond_0
    return-void
.end method

.method public static LogW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .parameter "title"
    .parameter "content"
    .parameter "tr"

    .prologue
    .line 158
    sget-boolean v1, Lcom/kt/olleh/inapp/Config/Config;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 161
    .local v0, str:Ljava/lang/StringBuffer;
    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 162
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    sget-object v1, Lcom/kt/olleh/inapp/Config/Config;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 168
    .end local v0           #str:Ljava/lang/StringBuffer;
    :cond_0
    return-void
.end method
