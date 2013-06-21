.class public final LgW;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/kms/updater/gui/UpdateActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/kms/updater/gui/UpdateActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LgW;-><init>(Lcom/kms/updater/gui/UpdateActivity;B)V

    return-void
.end method

.method private constructor <init>(Lcom/kms/updater/gui/UpdateActivity;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, LgW;->a:Lcom/kms/updater/gui/UpdateActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 37
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 118
    :goto_0
    :pswitch_0
    return-void

    .line 46
    :pswitch_1
    iget-object v0, p0, LgW;->a:Lcom/kms/updater/gui/UpdateActivity;

    invoke-static {v0}, Lcom/kms/updater/gui/UpdateActivity;->a(Lcom/kms/updater/gui/UpdateActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "serverAddress"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 62
    :pswitch_2
    iget-object v0, p0, LgW;->a:Lcom/kms/updater/gui/UpdateActivity;

    invoke-static {v0, v3}, Lcom/kms/updater/gui/UpdateActivity;->a(Lcom/kms/updater/gui/UpdateActivity;Z)Z

    .line 63
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "result"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 64
    packed-switch v0, :pswitch_data_1

    .line 96
    :pswitch_3
    and-int/lit16 v0, v0, 0xff

    .line 97
    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, LgW;->a:Lcom/kms/updater/gui/UpdateActivity;

    invoke-static {v0, v4}, Lcom/kms/updater/gui/UpdateActivity;->b(Lcom/kms/updater/gui/UpdateActivity;Z)V

    goto :goto_0

    .line 73
    :pswitch_4
    iget-object v0, p0, LgW;->a:Lcom/kms/updater/gui/UpdateActivity;

    invoke-static {v0}, Lcom/kms/updater/gui/UpdateActivity;->b(Lcom/kms/updater/gui/UpdateActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0800ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 75
    iget-object v0, p0, LgW;->a:Lcom/kms/updater/gui/UpdateActivity;

    invoke-static {v0, v3}, Lcom/kms/updater/gui/UpdateActivity;->b(Lcom/kms/updater/gui/UpdateActivity;Z)V

    goto :goto_0

    .line 80
    :pswitch_5
    iget-object v0, p0, LgW;->a:Lcom/kms/updater/gui/UpdateActivity;

    invoke-static {v0}, Lcom/kms/updater/gui/UpdateActivity;->b(Lcom/kms/updater/gui/UpdateActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0800ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 82
    iget-object v0, p0, LgW;->a:Lcom/kms/updater/gui/UpdateActivity;

    invoke-static {v0, v3}, Lcom/kms/updater/gui/UpdateActivity;->b(Lcom/kms/updater/gui/UpdateActivity;Z)V

    goto :goto_0

    .line 87
    :pswitch_6
    iget-object v0, p0, LgW;->a:Lcom/kms/updater/gui/UpdateActivity;

    invoke-static {v0}, Lcom/kms/updater/gui/UpdateActivity;->b(Lcom/kms/updater/gui/UpdateActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f080231

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 89
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, LgW;->a:Lcom/kms/updater/gui/UpdateActivity;

    const-class v2, Lcom/kms/activation/gui/InternetConnectionRequiredActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 90
    const-string v1, "com_kms_connection_error_str"

    iget-object v2, p0, LgW;->a:Lcom/kms/updater/gui/UpdateActivity;

    const v3, 0x7f0802cf

    invoke-virtual {v2, v3}, Lcom/kms/updater/gui/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    iget-object v1, p0, LgW;->a:Lcom/kms/updater/gui/UpdateActivity;

    invoke-virtual {v1, v0, v4}, Lcom/kms/updater/gui/UpdateActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, LgW;->a:Lcom/kms/updater/gui/UpdateActivity;

    invoke-static {v0}, Lcom/kms/updater/gui/UpdateActivity;->b(Lcom/kms/updater/gui/UpdateActivity;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0800ad

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 104
    iget-object v0, p0, LgW;->a:Lcom/kms/updater/gui/UpdateActivity;

    invoke-static {v0, v3}, Lcom/kms/updater/gui/UpdateActivity;->b(Lcom/kms/updater/gui/UpdateActivity;Z)V

    goto/16 :goto_0

    .line 113
    :pswitch_7
    iget-object v0, p0, LgW;->a:Lcom/kms/updater/gui/UpdateActivity;

    invoke-static {v0}, Lcom/kms/updater/gui/UpdateActivity;->c(Lcom/kms/updater/gui/UpdateActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/16 :goto_0

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_7
    .end packed-switch

    .line 64
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_6
    .end packed-switch
.end method
