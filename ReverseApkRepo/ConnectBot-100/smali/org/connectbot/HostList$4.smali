.class final Lorg/connectbot/HostList$4;
.super Ljava/lang/Object;
.source "HostList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/HostList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/HostList;


# direct methods
.method constructor <init>(Lorg/connectbot/HostList;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostList$4;->this$0:Lorg/connectbot/HostList;

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 183
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lorg/connectbot/HostList$4;->this$0:Lorg/connectbot/HostList;

    const-string v3, "http://connectbot.org/version"

    invoke-virtual {v2, v3}, Lorg/connectbot/HostList;->readUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 184
    .local v1, json:Lorg/json/JSONObject;
    iget-object v2, p0, Lorg/connectbot/HostList$4;->this$0:Lorg/connectbot/HostList;

    iget-object v2, v2, Lorg/connectbot/HostList;->versionHandler:Landroid/os/Handler;

    const/4 v3, -0x1

    invoke-static {v2, v3, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    .end local v1           #json:Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 186
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
