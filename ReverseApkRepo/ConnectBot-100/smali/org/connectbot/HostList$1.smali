.class final Lorg/connectbot/HostList$1;
.super Landroid/os/Handler;
.source "HostList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/HostList;
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
    iput-object p1, p0, Lorg/connectbot/HostList$1;->this$0:Lorg/connectbot/HostList;

    .line 61
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/HostList$1;)Lorg/connectbot/HostList;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lorg/connectbot/HostList$1;->this$0:Lorg/connectbot/HostList;

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    .line 66
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Lorg/json/JSONObject;

    if-nez v5, :cond_1

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 67
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    .line 69
    .local v1, json:Lorg/json/JSONObject;
    const-string v5, "version"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 70
    .local v3, version:D
    const-string v5, "features"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, features:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "market://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "target"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, target:Ljava/lang/String;
    const-wide/high16 v5, 0x3ff0

    cmpg-double v5, v3, v5

    if-lez v5, :cond_0

    .line 75
    new-instance v5, Landroid/app/AlertDialog$Builder;

    iget-object v6, p0, Lorg/connectbot/HostList$1;->this$0:Lorg/connectbot/HostList;

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    const-string v6, "New version"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 77
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 78
    const-string v6, "Yes, upgrade"

    new-instance v7, Lorg/connectbot/HostList$1$1;

    invoke-direct {v7, p0, v2}, Lorg/connectbot/HostList$1$1;-><init>(Lorg/connectbot/HostList$1;Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 84
    const-string v6, "Not right now"

    new-instance v7, Lorg/connectbot/HostList$1$2;

    invoke-direct {v7, p0}, Lorg/connectbot/HostList$1$2;-><init>(Lorg/connectbot/HostList$1;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 87
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method
