.class public Lcom/stickycoding/rokon/Debug;
.super Ljava/lang/Object;
.source "Debug.java"


# static fields
.field protected static debugMode:Z

.field private static tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-string v0, "Rokon"

    sput-object v0, Lcom/stickycoding/rokon/Debug;->tag:Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    sput-boolean v0, Lcom/stickycoding/rokon/Debug;->debugMode:Z

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 70
    sget-object v1, Lcom/stickycoding/rokon/Debug;->tag:Ljava/lang/String;

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    return-void
.end method

.method public static forceExit()V
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 102
    return-void
.end method

.method public static getDebugTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/stickycoding/rokon/Debug;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public static print(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 60
    sget-boolean v0, Lcom/stickycoding/rokon/Debug;->debugMode:Z

    if-nez v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 61
    :cond_0
    sget-object v0, Lcom/stickycoding/rokon/Debug;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static setDebugTag(Ljava/lang/String;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 28
    sput-object p0, Lcom/stickycoding/rokon/Debug;->tag:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static verbose(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 93
    sget-boolean v0, Lcom/stickycoding/rokon/Debug;->debugMode:Z

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 94
    :cond_0
    sget-object v0, Lcom/stickycoding/rokon/Debug;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "method"
    .parameter "message"

    .prologue
    .line 82
    sget-boolean v0, Lcom/stickycoding/rokon/Debug;->debugMode:Z

    if-nez v0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    sget-object v0, Lcom/stickycoding/rokon/Debug;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    sget-boolean v0, Lcom/stickycoding/rokon/Debug;->debugMode:Z

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 1
    .parameter "message"

    .prologue
    .line 50
    sget-boolean v0, Lcom/stickycoding/rokon/Debug;->debugMode:Z

    if-nez v0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 51
    :cond_0
    sget-object v0, Lcom/stickycoding/rokon/Debug;->tag:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "source"
    .parameter "message"

    .prologue
    const-string v4, " - "

    .line 38
    sget-boolean v1, Lcom/stickycoding/rokon/Debug;->debugMode:Z

    if-nez v1, :cond_0

    .line 42
    :goto_0
    return-void

    .line 39
    :cond_0
    sget-object v1, Lcom/stickycoding/rokon/Debug;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
