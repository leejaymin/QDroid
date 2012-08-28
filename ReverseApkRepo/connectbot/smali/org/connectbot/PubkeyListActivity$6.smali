.class Lorg/connectbot/PubkeyListActivity$6;
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

.field private final synthetic val$loaded:Z

.field private final synthetic val$pubkey:Lorg/connectbot/bean/PubkeyBean;


# direct methods
.method constructor <init>(Lorg/connectbot/PubkeyListActivity;ZLorg/connectbot/bean/PubkeyBean;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PubkeyListActivity$6;->this$0:Lorg/connectbot/PubkeyListActivity;

    iput-boolean p2, p0, Lorg/connectbot/PubkeyListActivity$6;->val$loaded:Z

    iput-object p3, p0, Lorg/connectbot/PubkeyListActivity$6;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 319
    iget-boolean v0, p0, Lorg/connectbot/PubkeyListActivity$6;->val$loaded:Z

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity$6;->this$0:Lorg/connectbot/PubkeyListActivity;

    iget-object v0, v0, Lorg/connectbot/PubkeyListActivity;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v1, p0, Lorg/connectbot/PubkeyListActivity$6;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalManager;->removeKey(Ljava/lang/String;)Z

    .line 321
    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity$6;->this$0:Lorg/connectbot/PubkeyListActivity;

    iget-object v0, v0, Lorg/connectbot/PubkeyListActivity;->updateHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 326
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity$6;->this$0:Lorg/connectbot/PubkeyListActivity;

    iget-object v1, p0, Lorg/connectbot/PubkeyListActivity$6;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v0, v1}, Lorg/connectbot/PubkeyListActivity;->handleAddKey(Lorg/connectbot/bean/PubkeyBean;)V

    goto :goto_0
.end method
