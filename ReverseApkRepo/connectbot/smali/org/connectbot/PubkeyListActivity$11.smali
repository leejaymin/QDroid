.class Lorg/connectbot/PubkeyListActivity$11;
.super Ljava/lang/Object;
.source "PubkeyListActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PubkeyListActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/PubkeyListActivity;

.field private final synthetic val$pubkey:Lorg/connectbot/bean/PubkeyBean;


# direct methods
.method constructor <init>(Lorg/connectbot/PubkeyListActivity;Lorg/connectbot/bean/PubkeyBean;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PubkeyListActivity$11;->this$0:Lorg/connectbot/PubkeyListActivity;

    iput-object p2, p0, Lorg/connectbot/PubkeyListActivity$11;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 436
    iget-object v2, p0, Lorg/connectbot/PubkeyListActivity$11;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity$11;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v0}, Lorg/connectbot/bean/PubkeyBean;->isConfirmUse()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lorg/connectbot/bean/PubkeyBean;->setConfirmUse(Z)V

    .line 437
    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity$11;->this$0:Lorg/connectbot/PubkeyListActivity;

    iget-object v0, v0, Lorg/connectbot/PubkeyListActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    iget-object v2, p0, Lorg/connectbot/PubkeyListActivity$11;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v0, v2}, Lorg/connectbot/util/PubkeyDatabase;->savePubkey(Lorg/connectbot/bean/PubkeyBean;)Lorg/connectbot/bean/PubkeyBean;

    .line 438
    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity$11;->this$0:Lorg/connectbot/PubkeyListActivity;

    iget-object v0, v0, Lorg/connectbot/PubkeyListActivity;->updateHandler:Landroid/os/Handler;

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 439
    return v1

    :cond_0
    move v0, v1

    .line 436
    goto :goto_0
.end method
