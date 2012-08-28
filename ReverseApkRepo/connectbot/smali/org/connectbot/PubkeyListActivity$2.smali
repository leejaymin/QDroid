.class Lorg/connectbot/PubkeyListActivity$2;
.super Landroid/os/Handler;
.source "PubkeyListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/PubkeyListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/PubkeyListActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/PubkeyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PubkeyListActivity$2;->this$0:Lorg/connectbot/PubkeyListActivity;

    .line 470
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 473
    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity$2;->this$0:Lorg/connectbot/PubkeyListActivity;

    invoke-virtual {v0}, Lorg/connectbot/PubkeyListActivity;->updateList()V

    .line 474
    return-void
.end method
