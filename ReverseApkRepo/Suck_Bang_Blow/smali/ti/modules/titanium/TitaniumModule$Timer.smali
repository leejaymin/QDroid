.class public Lti/modules/titanium/TitaniumModule$Timer;
.super Ljava/lang/Object;
.source "TitaniumModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/TitaniumModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Timer"
.end annotation


# instance fields
.field protected args:[Ljava/lang/Object;

.field protected callback:Lorg/appcelerator/titanium/kroll/KrollCallback;

.field protected canceled:Z

.field protected handler:Landroid/os/Handler;

.field protected id:I

.field protected interval:Z

.field final synthetic this$0:Lti/modules/titanium/TitaniumModule;

.field protected timeout:J


# direct methods
.method public constructor <init>(Lti/modules/titanium/TitaniumModule;ILandroid/os/Handler;Lorg/appcelerator/titanium/kroll/KrollCallback;J[Ljava/lang/Object;Z)V
    .locals 0
    .parameter
    .parameter "id"
    .parameter "handler"
    .parameter "callback"
    .parameter "timeout"
    .parameter "args"
    .parameter "interval"

    .prologue
    .line 141
    iput-object p1, p0, Lti/modules/titanium/TitaniumModule$Timer;->this$0:Lti/modules/titanium/TitaniumModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput p2, p0, Lti/modules/titanium/TitaniumModule$Timer;->id:I

    .line 143
    iput-object p3, p0, Lti/modules/titanium/TitaniumModule$Timer;->handler:Landroid/os/Handler;

    .line 144
    iput-object p4, p0, Lti/modules/titanium/TitaniumModule$Timer;->callback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    .line 145
    iput-wide p5, p0, Lti/modules/titanium/TitaniumModule$Timer;->timeout:J

    .line 146
    iput-object p7, p0, Lti/modules/titanium/TitaniumModule$Timer;->args:[Ljava/lang/Object;

    .line 147
    iput-boolean p8, p0, Lti/modules/titanium/TitaniumModule$Timer;->interval:Z

    .line 148
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lti/modules/titanium/TitaniumModule$Timer;->handler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    const/4 v0, 0x1

    iput-boolean v0, p0, Lti/modules/titanium/TitaniumModule$Timer;->canceled:Z

    .line 171
    return-void
.end method

.method public run()V
    .locals 7

    .prologue
    .line 158
    iget-boolean v2, p0, Lti/modules/titanium/TitaniumModule$Timer;->canceled:Z

    if-eqz v2, :cond_1

    .line 165
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    const-string v2, "TitaniumModule"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lti/modules/titanium/TitaniumModule$Timer;->interval:Z

    if-eqz v4, :cond_2

    const-string v4, "interval"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " timer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lti/modules/titanium/TitaniumModule$Timer;->id:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " @"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 161
    .local v0, start:J
    iget-object v2, p0, Lti/modules/titanium/TitaniumModule$Timer;->callback:Lorg/appcelerator/titanium/kroll/KrollCallback;

    iget-object v3, p0, Lti/modules/titanium/TitaniumModule$Timer;->args:[Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lorg/appcelerator/titanium/kroll/KrollCallback;->callSync([Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-boolean v2, p0, Lti/modules/titanium/TitaniumModule$Timer;->interval:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lti/modules/titanium/TitaniumModule$Timer;->canceled:Z

    if-nez v2, :cond_0

    .line 163
    iget-object v2, p0, Lti/modules/titanium/TitaniumModule$Timer;->handler:Landroid/os/Handler;

    iget-wide v3, p0, Lti/modules/titanium/TitaniumModule$Timer;->timeout:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    sub-long/2addr v3, v5

    invoke-virtual {v2, p0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 159
    .end local v0           #start:J
    :cond_2
    const-string v4, "timeout"

    goto :goto_1
.end method

.method public schedule()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lti/modules/titanium/TitaniumModule$Timer;->handler:Landroid/os/Handler;

    iget-wide v1, p0, Lti/modules/titanium/TitaniumModule$Timer;->timeout:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 153
    return-void
.end method
