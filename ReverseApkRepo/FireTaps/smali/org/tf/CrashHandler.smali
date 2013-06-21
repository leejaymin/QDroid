.class public Lorg/tf/CrashHandler;
.super Ljava/lang/Object;
.source "CrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field private m_context:Landroid/content/Context;

.field private m_details:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/tf/CrashHandler;->m_context:Landroid/content/Context;

    .line 44
    return-void
.end method

.method public static attachToCurrentThread(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    new-instance v0, Lorg/tf/CrashHandler;

    invoke-direct {v0, p0}, Lorg/tf/CrashHandler;-><init>(Landroid/content/Context;)V

    .line 27
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 30
    return-void
.end method

.method public static setDetails(Ljava/lang/String;)V
    .locals 2
    .parameter "details"

    .prologue
    .line 34
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 35
    .local v0, handler:Ljava/lang/Thread$UncaughtExceptionHandler;
    instance-of v1, v0, Lorg/tf/CrashHandler;

    if-eqz v1, :cond_0

    .line 36
    check-cast v0, Lorg/tf/CrashHandler;

    .end local v0           #handler:Ljava/lang/Thread$UncaughtExceptionHandler;
    iput-object p0, v0, Lorg/tf/CrashHandler;->m_details:Ljava/lang/String;

    .line 38
    :cond_0
    return-void
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 6
    .parameter "thread"
    .parameter "exception"

    .prologue
    const/4 v2, 0x0

    .line 48
    iget-object v0, p0, Lorg/tf/CrashHandler;->m_context:Landroid/content/Context;

    .line 49
    const/4 v1, 0x0

    .line 51
    iget-object v4, p0, Lorg/tf/CrashHandler;->m_details:Ljava/lang/String;

    move-object v3, v2

    move-object v5, p2

    .line 47
    invoke-static/range {v0 .. v5}, Lorg/tf/ErrorReportActivity;->report(Landroid/content/Context;ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 55
    const/16 v0, 0xa

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 56
    return-void
.end method
