.class public Lcom/spritefish/camera/LO;
.super Ljava/lang/Object;
.source "LO.java"


# static fields
.field private static logId:Ljava/lang/String;

.field private static reporter:Lcom/spritefish/camera/ExceptionReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-string v0, "CameraLib"

    sput-object v0, Lcom/spritefish/camera/LO;->logId:Ljava/lang/String;

    .line 5
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 18
    sget-object v0, Lcom/spritefish/camera/LO;->logId:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method

.method public static init(Ljava/lang/String;)V
    .locals 0
    .parameter "thelogId"

    .prologue
    .line 13
    sput-object p0, Lcom/spritefish/camera/LO;->logId:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static installExceptionReporter(Lcom/spritefish/camera/ExceptionReporter;)V
    .locals 0
    .parameter "e"

    .prologue
    .line 23
    sput-object p0, Lcom/spritefish/camera/LO;->reporter:Lcom/spritefish/camera/ExceptionReporter;

    .line 24
    return-void
.end method

.method public static reportException(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .parameter "tag"
    .parameter "t"

    .prologue
    .line 28
    sget-object v0, Lcom/spritefish/camera/LO;->reporter:Lcom/spritefish/camera/ExceptionReporter;

    if-eqz v0, :cond_0

    .line 29
    sget-object v0, Lcom/spritefish/camera/LO;->reporter:Lcom/spritefish/camera/ExceptionReporter;

    invoke-interface {v0, p0, p1}, Lcom/spritefish/camera/ExceptionReporter;->handleException(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 30
    :cond_0
    return-void
.end method
