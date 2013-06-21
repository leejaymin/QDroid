.class Lcom/jellybus/fx/Activity_Filter$9;
.super Ljava/lang/Object;
.source "Activity_Filter.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jellybus/fx/Activity_Filter;->filter_button_cancel_listener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jellybus/fx/Activity_Filter;


# direct methods
.method constructor <init>(Lcom/jellybus/fx/Activity_Filter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    .line 945
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter "dialog"
    .parameter "which"

    .prologue
    const v7, 0x10a0001

    const/high16 v6, 0x10a

    const/4 v5, 0x0

    .line 949
    packed-switch p2, :pswitch_data_0

    .line 981
    :goto_0
    return-void

    .line 952
    :pswitch_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #calls: Lcom/jellybus/fx/Activity_Filter;->new_preview()V
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$38(Lcom/jellybus/fx/Activity_Filter;)V

    .line 953
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #calls: Lcom/jellybus/fx/Activity_Filter;->removeBitmap()V
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$27(Lcom/jellybus/fx/Activity_Filter;)V

    .line 954
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v2}, Lcom/jellybus/fx/Activity_Filter;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jellybus/fx/Activity_Main;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 955
    .local v1, intent_main:Landroid/content/Intent;
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v2, v1}, Lcom/jellybus/fx/Activity_Filter;->startActivity(Landroid/content/Intent;)V

    .line 956
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v2}, Lcom/jellybus/fx/Activity_Filter;->finish()V

    .line 957
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v2, v6, v7}, Lcom/jellybus/fx/Activity_Filter;->overridePendingTransition(II)V

    goto :goto_0

    .line 960
    .end local v1           #intent_main:Landroid/content/Intent;
    :pswitch_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$17(Lcom/jellybus/fx/Activity_Filter;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$17(Lcom/jellybus/fx/Activity_Filter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "matrix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 961
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #calls: Lcom/jellybus/fx/Activity_Filter;->checkTimeIntent()V
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$39(Lcom/jellybus/fx/Activity_Filter;)V

    goto :goto_0

    .line 963
    :cond_0
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$17(Lcom/jellybus/fx/Activity_Filter;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$17(Lcom/jellybus/fx/Activity_Filter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "matrix"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 964
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #setter for: Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;
    invoke-static {v2, v5}, Lcom/jellybus/fx/Activity_Filter;->access$40(Lcom/jellybus/fx/Activity_Filter;Ljava/lang/String;)V

    .line 966
    :cond_1
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #calls: Lcom/jellybus/fx/Activity_Filter;->new_preview()V
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$38(Lcom/jellybus/fx/Activity_Filter;)V

    .line 967
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #calls: Lcom/jellybus/fx/Activity_Filter;->removeBitmap()V
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$27(Lcom/jellybus/fx/Activity_Filter;)V

    .line 969
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v2}, Lcom/jellybus/fx/Activity_Filter;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/jellybus/fx/Activity_FX;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 970
    .local v0, intent_fx:Landroid/content/Intent;
    const-string v3, "filterID"

    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iget-object v2, v2, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    iget-object v2, v2, Lcom/jellybus/fx_sub/FilterAdapter;->total:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->filterID:I
    invoke-static {v4}, Lcom/jellybus/fx/Activity_Filter;->access$5(Lcom/jellybus/fx/Activity_Filter;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/jellybus/fx_sub/Filter;

    iget-object v2, v2, Lcom/jellybus/fx_sub/Filter;->groupName:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 971
    const-string v2, "menu"

    iget-object v3, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->menu:Ljava/lang/String;
    invoke-static {v3}, Lcom/jellybus/fx/Activity_Filter;->access$17(Lcom/jellybus/fx/Activity_Filter;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 972
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    iput-object v5, v2, Lcom/jellybus/fx/Activity_Filter;->filterAdapter:Lcom/jellybus/fx_sub/FilterAdapter;

    .line 973
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #setter for: Lcom/jellybus/fx/Activity_Filter;->list:[I
    invoke-static {v2, v5}, Lcom/jellybus/fx/Activity_Filter;->access$32(Lcom/jellybus/fx/Activity_Filter;[I)V

    .line 974
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    #getter for: Lcom/jellybus/fx/Activity_Filter;->mDialog:Landroid/app/Dialog;
    invoke-static {v2}, Lcom/jellybus/fx/Activity_Filter;->access$41(Lcom/jellybus/fx/Activity_Filter;)Landroid/app/Dialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 975
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v2, v0}, Lcom/jellybus/fx/Activity_Filter;->startActivity(Landroid/content/Intent;)V

    .line 976
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v2}, Lcom/jellybus/fx/Activity_Filter;->finish()V

    .line 977
    iget-object v2, p0, Lcom/jellybus/fx/Activity_Filter$9;->this$0:Lcom/jellybus/fx/Activity_Filter;

    invoke-virtual {v2, v6, v7}, Lcom/jellybus/fx/Activity_Filter;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 949
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
