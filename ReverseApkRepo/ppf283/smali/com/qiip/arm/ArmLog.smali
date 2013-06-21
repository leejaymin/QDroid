.class public Lcom/qiip/arm/ArmLog;
.super Ljava/lang/Object;
.source "ArmLog.java"


# static fields
.field public static mBLogEnable:Z

.field public static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qiip/arm/ArmLog;->mBLogEnable:Z

    .line 15
    const-string v0, "ArmLog"

    sput-object v0, Lcom/qiip/arm/ArmLog;->tag:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 27
    sget-boolean v0, Lcom/qiip/arm/ArmLog;->mBLogEnable:Z

    if-eqz v0, :cond_0

    .line 28
    sget-object v0, Lcom/qiip/arm/ArmLog;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 31
    sget-boolean v0, Lcom/qiip/arm/ArmLog;->mBLogEnable:Z

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/qiip/arm/ArmLog;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_0
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 23
    sget-boolean v0, Lcom/qiip/arm/ArmLog;->mBLogEnable:Z

    if-eqz v0, :cond_0

    .line 24
    sget-object v0, Lcom/qiip/arm/ArmLog;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 35
    sget-boolean v0, Lcom/qiip/arm/ArmLog;->mBLogEnable:Z

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/qiip/arm/ArmLog;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 18
    sget-boolean v0, Lcom/qiip/arm/ArmLog;->mBLogEnable:Z

    if-eqz v0, :cond_0

    .line 19
    sget-object v0, Lcom/qiip/arm/ArmLog;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    return-void
.end method
