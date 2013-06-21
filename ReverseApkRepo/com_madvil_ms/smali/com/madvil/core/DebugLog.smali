.class public Lcom/madvil/core/DebugLog;
.super Ljava/lang/Object;
.source "DebugLog.java"


# static fields
.field private static DEBUG_MODE:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    const/4 v0, 0x0

    sput-boolean v0, Lcom/madvil/core/DebugLog;->DEBUG_MODE:Z

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static erPrintln(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 14
    sget-boolean v0, Lcom/madvil/core/DebugLog;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 17
    :cond_0
    return-void
.end method

.method public static println(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 8
    sget-boolean v0, Lcom/madvil/core/DebugLog;->DEBUG_MODE:Z

    if-eqz v0, :cond_0

    .line 9
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11
    :cond_0
    return-void
.end method
