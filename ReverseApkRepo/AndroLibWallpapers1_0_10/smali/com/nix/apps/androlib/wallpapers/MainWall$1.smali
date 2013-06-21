.class Lcom/nix/apps/androlib/wallpapers/MainWall$1;
.super Landroid/os/Handler;
.source "MainWall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nix/apps/androlib/wallpapers/MainWall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/MainWall;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    .line 949
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 952
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 1039
    .end local p0
    :goto_0
    return-void

    .line 960
    .restart local p0
    :sswitch_0
    iget-object v8, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    const v1, 0x7f04000c

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04000d

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 961
    new-instance v5, Lcom/nix/apps/androlib/wallpapers/MainWall$1$1;

    invoke-direct {v5, p0}, Lcom/nix/apps/androlib/wallpapers/MainWall$1$1;-><init>(Lcom/nix/apps/androlib/wallpapers/MainWall$1;)V

    move v4, v3

    .line 960
    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, v8, Lcom/nix/apps/androlib/wallpapers/MainWall;->mDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 972
    :sswitch_1
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 977
    :sswitch_2
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/MainWall;->mDialog:Landroid/app/ProgressDialog;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 982
    .restart local p0
    :sswitch_3
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 988
    .restart local p0
    :sswitch_4
    new-instance v7, Landroid/widget/Toast;

    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-direct {v7, v0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 989
    .local v7, ts:Landroid/widget/Toast;
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    .line 990
    const/16 v0, 0x30

    const/16 v1, 0x64

    invoke-virtual {v7, v0, v2, v1}, Landroid/widget/Toast;->setGravity(III)V

    .line 991
    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 999
    .end local v7           #ts:Landroid/widget/Toast;
    .restart local p0
    :sswitch_5
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$0(Lcom/nix/apps/androlib/wallpapers/MainWall;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;

    if-nez v0, :cond_0

    .line 1001
    new-instance v6, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;

    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-direct {v6, v0}, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;-><init>(Landroid/content/Context;)V

    .line 1002
    .local v6, arrAgg:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->WallpapersFound:Ljava/util/ArrayList;

    iput-object v0, v6, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->myDatas:Ljava/util/ArrayList;

    .line 1003
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$0(Lcom/nix/apps/androlib/wallpapers/MainWall;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1027
    :goto_1
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->checkButtons()V

    .line 1028
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->animateComeIn()V

    goto/16 :goto_0

    .line 1006
    .end local v6           #arrAgg:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;
    :cond_0
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$0(Lcom/nix/apps/androlib/wallpapers/MainWall;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v6

    check-cast v6, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;

    .line 1016
    .restart local v6       #arrAgg:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/MainWall;->rss:Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/datamanager/RSSHandler;->WallpapersFound:Ljava/util/ArrayList;

    iput-object v0, v6, Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;->myDatas:Ljava/util/ArrayList;

    .line 1017
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    #getter for: Lcom/nix/apps/androlib/wallpapers/MainWall;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->access$0(Lcom/nix/apps/androlib/wallpapers/MainWall;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 1036
    .end local v6           #arrAgg:Lcom/nix/apps/androlib/wallpapers/adapters/WallpapersAdapter;
    :sswitch_6
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/MainWall$1;->this$0:Lcom/nix/apps/androlib/wallpapers/MainWall;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/MainWall;->bye()V

    goto/16 :goto_0

    .line 952
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_5
        0x2c -> :sswitch_4
        0xf423f -> :sswitch_6
    .end sparse-switch
.end method
