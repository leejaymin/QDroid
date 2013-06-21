.class Lcom/magmamobile/mmusia/activities/MMUSIAActivity$1;
.super Landroid/os/Handler;
.source "MMUSIAActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magmamobile/mmusia/activities/MMUSIAActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;


# direct methods
.method constructor <init>(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$1;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    .line 243
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x1

    .line 246
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 278
    .end local p0
    :goto_0
    return-void

    .line 250
    .restart local p0
    :sswitch_0
    iget-object v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$1;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    iget-object v1, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$1;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    sget-object v2, Lcom/magmamobile/mmusia/data/LanguageBase;->DIALOG_LOADING:Ljava/lang/String;

    sget-object v3, Lcom/magmamobile/mmusia/data/LanguageBase;->DIALOG_PLEASEWAIT:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4, v4}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    move-result-object v1

    #setter for: Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->access$0(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;Landroid/app/ProgressDialog;)V

    goto :goto_0

    .line 255
    :sswitch_1
    iget-object v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$1;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    #getter for: Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->access$1(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0

    .line 260
    :sswitch_2
    iget-object v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$1;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    #getter for: Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->mDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->access$1(Lcom/magmamobile/mmusia/activities/MMUSIAActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 265
    .restart local p0
    :sswitch_3
    iget-object v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$1;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 270
    .restart local p0
    :sswitch_4
    iget-object v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$1;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    invoke-virtual {v0}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->displayNews()V

    goto :goto_0

    .line 275
    :sswitch_5
    iget-object v0, p0, Lcom/magmamobile/mmusia/activities/MMUSIAActivity$1;->this$0:Lcom/magmamobile/mmusia/activities/MMUSIAActivity;

    invoke-virtual {v0}, Lcom/magmamobile/mmusia/activities/MMUSIAActivity;->finish()V

    goto :goto_0

    .line 246
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x4 -> :sswitch_3
        0x5 -> :sswitch_4
        0xf423f -> :sswitch_5
    .end sparse-switch
.end method
