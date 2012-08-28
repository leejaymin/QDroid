.class Lorg/connectbot/PubkeyListActivity$3;
.super Ljava/lang/Object;
.source "PubkeyListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/connectbot/PubkeyListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/connectbot/PubkeyListActivity;


# direct methods
.method constructor <init>(Lorg/connectbot/PubkeyListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lorg/connectbot/PubkeyListActivity$3;->this$0:Lorg/connectbot/PubkeyListActivity;

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 159
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lorg/connectbot/PubkeyListActivity$3;->this$0:Lorg/connectbot/PubkeyListActivity;

    invoke-virtual {v2}, Lorg/connectbot/PubkeyListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/connectbot/bean/PubkeyBean;

    .line 160
    .local v1, pubkey:Lorg/connectbot/bean/PubkeyBean;
    iget-object v2, p0, Lorg/connectbot/PubkeyListActivity$3;->this$0:Lorg/connectbot/PubkeyListActivity;

    iget-object v2, v2, Lorg/connectbot/PubkeyListActivity;->bound:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/connectbot/service/TerminalManager;->isKeyLoaded(Ljava/lang/String;)Z

    move-result v0

    .line 163
    .local v0, loaded:Z
    if-eqz v0, :cond_0

    .line 164
    iget-object v2, p0, Lorg/connectbot/PubkeyListActivity$3;->this$0:Lorg/connectbot/PubkeyListActivity;

    iget-object v2, v2, Lorg/connectbot/PubkeyListActivity;->bound:Lorg/connectbot/service/TerminalManager;

    invoke-virtual {v1}, Lorg/connectbot/bean/PubkeyBean;->getNickname()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/connectbot/service/TerminalManager;->removeKey(Ljava/lang/String;)Z

    .line 165
    iget-object v2, p0, Lorg/connectbot/PubkeyListActivity$3;->this$0:Lorg/connectbot/PubkeyListActivity;

    iget-object v2, v2, Lorg/connectbot/PubkeyListActivity;->updateHandler:Landroid/os/Handler;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 170
    :goto_0
    return-void

    .line 167
    :cond_0
    iget-object v2, p0, Lorg/connectbot/PubkeyListActivity$3;->this$0:Lorg/connectbot/PubkeyListActivity;

    invoke-virtual {v2, v1}, Lorg/connectbot/PubkeyListActivity;->handleAddKey(Lorg/connectbot/bean/PubkeyBean;)V

    goto :goto_0
.end method
