.class Lorg/connectbot/HostListActivity$1;
.super Landroid/os/Handler;
.source "HostListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/HostListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/HostListActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/HostListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/HostListActivity$1;->this$0:Lorg/connectbot/HostListActivity;

    .line 89
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 92
    iget-object v0, p0, Lorg/connectbot/HostListActivity$1;->this$0:Lorg/connectbot/HostListActivity;

    invoke-virtual {v0}, Lorg/connectbot/HostListActivity;->updateList()V

    .line 93
    return-void
.end method
