.class Lorg/connectbot/PubkeyListActivity$12$1;
.super Ljava/lang/Object;
.source "PubkeyListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PubkeyListActivity$12;->onMenuItemClick(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/connectbot/PubkeyListActivity$12;

.field private final synthetic val$loaded:Z

.field private final synthetic val$pubkey:Lorg/connectbot/bean/PubkeyBean;


# direct methods
.method constructor <init>(Lorg/connectbot/PubkeyListActivity$12;ZLorg/connectbot/bean/PubkeyBean;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PubkeyListActivity$12$1;->this$1:Lorg/connectbot/PubkeyListActivity$12;

    iput-boolean p2, p0, Lorg/connectbot/PubkeyListActivity$12$1;->val$loaded:Z

    iput-object p3, p0, Lorg/connectbot/PubkeyListActivity$12$1;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    .line 449
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 453
    iget-boolean v0, p0, Lorg/connectbot/PubkeyListActivity$12$1;->val$loaded:Z

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity$12$1;->this$1:Lorg/connectbot/PubkeyListActivity$12;

    #getter for: Lorg/connectbot/PubkeyListActivity$12;->this$0:Lorg/connectbot/PubkeyListActivity;
    invoke-static {v0}, Lorg/connectbot/PubkeyListActivity$12;->access$0(Lorg/connectbot/PubkeyListActivity$12;)Lorg/connectbot/PubkeyListActivity;

    move-result-object v0

    iget-object v0, v0, Lorg/connectbot/PubkeyListActivity;->bound:Lorg/connectbot/service/TerminalManager;

    iget-object v1, p0, Lorg/connectbot/PubkeyListActivity$12$1;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/connectbot/service/TerminalManager;->removeKey(Ljava/lang/String;)Z

    .line 457
    :cond_0
    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity$12$1;->this$1:Lorg/connectbot/PubkeyListActivity$12;

    #getter for: Lorg/connectbot/PubkeyListActivity$12;->this$0:Lorg/connectbot/PubkeyListActivity;
    invoke-static {v0}, Lorg/connectbot/PubkeyListActivity$12;->access$0(Lorg/connectbot/PubkeyListActivity$12;)Lorg/connectbot/PubkeyListActivity;

    move-result-object v0

    iget-object v0, v0, Lorg/connectbot/PubkeyListActivity;->pubkeydb:Lorg/connectbot/util/PubkeyDatabase;

    iget-object v1, p0, Lorg/connectbot/PubkeyListActivity$12$1;->val$pubkey:Lorg/connectbot/bean/PubkeyBean;

    invoke-virtual {v0, v1}, Lorg/connectbot/util/PubkeyDatabase;->deletePubkey(Lorg/connectbot/bean/PubkeyBean;)V

    .line 458
    iget-object v0, p0, Lorg/connectbot/PubkeyListActivity$12$1;->this$1:Lorg/connectbot/PubkeyListActivity$12;

    #getter for: Lorg/connectbot/PubkeyListActivity$12;->this$0:Lorg/connectbot/PubkeyListActivity;
    invoke-static {v0}, Lorg/connectbot/PubkeyListActivity$12;->access$0(Lorg/connectbot/PubkeyListActivity$12;)Lorg/connectbot/PubkeyListActivity;

    move-result-object v0

    iget-object v0, v0, Lorg/connectbot/PubkeyListActivity;->updateHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 459
    return-void
.end method
