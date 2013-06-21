.class final Lorg/connectbot/HostList$2;
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
    iput-object p1, p0, Lorg/connectbot/HostList$2;->this$0:Lorg/connectbot/HostList;

    .line 93
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 96
    iget-object v0, p0, Lorg/connectbot/HostList$2;->this$0:Lorg/connectbot/HostList;

    invoke-virtual {v0}, Lorg/connectbot/HostList;->updateCursor()V

    .line 97
    return-void
.end method
