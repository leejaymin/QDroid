.class public Lcom/sphericbox/syb/e;
.super Lcom/sphericbox/syb/ui/f;
.source "SourceFile"


# instance fields
.field private final ad:Lcom/sphericbox/syb/ui/ActionActivity;

.field private final ae:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sphericbox/syb/ui/ActionActivity;ILjava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const v2, 0x7f080015

    .line 17
    const v0, 0x7f080014

    const v1, 0x7f030008

    invoke-direct {p0, p1, v0, v1}, Lcom/sphericbox/syb/ui/f;-><init>(Landroid/content/Context;II)V

    .line 20
    iput-object p1, p0, Lcom/sphericbox/syb/e;->ad:Lcom/sphericbox/syb/ui/ActionActivity;

    .line 23
    packed-switch p2, :pswitch_data_0

    .line 37
    invoke-virtual {p0}, Lcom/sphericbox/syb/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 41
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sphericbox/syb/e;->ae:Ljava/lang/String;

    .line 43
    const v1, 0x7f090013

    invoke-virtual {p0, v1}, Lcom/sphericbox/syb/e;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    return-void

    .line 25
    :pswitch_0
    invoke-virtual {p0}, Lcom/sphericbox/syb/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 28
    :pswitch_1
    invoke-virtual {p0}, Lcom/sphericbox/syb/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 31
    :pswitch_2
    invoke-virtual {p0}, Lcom/sphericbox/syb/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 34
    :pswitch_3
    invoke-virtual {p0}, Lcom/sphericbox/syb/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected m()V
    .locals 5

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/sphericbox/syb/e;->ae:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const-string v1, "android.intent.extra.SUBJECT"

    const-string v2, "New problem report received"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    const-string v1, "android.intent.extra.EMAIL"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "support@shareyourboard.com"

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v1, p0, Lcom/sphericbox/syb/e;->ad:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-virtual {v1, v0}, Lcom/sphericbox/syb/ui/ActionActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    iget-object v0, p0, Lcom/sphericbox/syb/e;->ad:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-virtual {v0, p0}, Lcom/sphericbox/syb/ui/ActionActivity;->dismissDialog(Landroid/app/Dialog;)V

    .line 62
    iget-object v0, p0, Lcom/sphericbox/syb/e;->ad:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-virtual {v0}, Lcom/sphericbox/syb/ui/ActionActivity;->finish()V

    .line 63
    return-void
.end method

.method protected onCancel()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/sphericbox/syb/e;->ad:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-virtual {v0, p0}, Lcom/sphericbox/syb/ui/ActionActivity;->dismissDialog(Landroid/app/Dialog;)V

    .line 50
    iget-object v0, p0, Lcom/sphericbox/syb/e;->ad:Lcom/sphericbox/syb/ui/ActionActivity;

    invoke-virtual {v0}, Lcom/sphericbox/syb/ui/ActionActivity;->finish()V

    .line 51
    return-void
.end method
