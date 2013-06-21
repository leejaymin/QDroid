.class Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;
.super Landroid/os/Handler;
.source "CategoriesActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    .line 157
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 160
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 207
    .end local p0
    :goto_0
    return-void

    .line 164
    .restart local p0
    :sswitch_0
    iget-object v7, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    const v1, 0x7f04000c

    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04000d

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/modCommon;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    new-instance v5, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1$1;

    invoke-direct {v5, p0}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1$1;-><init>(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;)V

    move v4, v3

    .line 164
    invoke-static/range {v0 .. v5}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, v7, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->mDialog:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 176
    :sswitch_1
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 181
    :sswitch_2
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    iget-object v0, v0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->mDialog:Landroid/app/ProgressDialog;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 186
    .restart local p0
    :sswitch_3
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 191
    .restart local p0
    :sswitch_4
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    #getter for: Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->access$0(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;

    if-nez v0, :cond_0

    .line 193
    new-instance v6, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;

    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    invoke-direct {v6, v0}, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;-><init>(Landroid/content/Context;)V

    .line 194
    .local v6, arrAgg:Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    #getter for: Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->access$0(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 198
    .end local v6           #arrAgg:Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;
    :goto_1
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    #getter for: Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->access$0(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    #getter for: Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->controller:Landroid/view/animation/LayoutAnimationController;
    invoke-static {v1}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->access$1(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;)Landroid/view/animation/LayoutAnimationController;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    #getter for: Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->mList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->access$0(Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/adapters/CategoriesAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 203
    :sswitch_5
    iget-object v0, p0, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity$1;->this$0:Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;

    invoke-virtual {v0}, Lcom/nix/apps/androlib/wallpapers/activities/CategoriesActivity;->finish()V

    goto/16 :goto_0

    .line 160
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0xf423f -> :sswitch_5
    .end sparse-switch
.end method
