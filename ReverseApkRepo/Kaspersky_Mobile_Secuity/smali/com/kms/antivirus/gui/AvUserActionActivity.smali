.class public Lcom/kms/antivirus/gui/AvUserActionActivity;
.super Lcom/kms/gui/KMSCommonUserActionActivity;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonUserActionActivity;-><init>()V

    .line 140
    return-void
.end method


# virtual methods
.method protected final a(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 124
    const v0, 0x7f030056

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 125
    const v0, 0x7f0b0005

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    sget-object v1, LcU;->a:[I

    iget-object v3, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->c:Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;

    invoke-virtual {v3}, Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    .line 140
    const v1, 0x7f08007f

    .line 142
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Lcom/kms/antivirus/gui/AvUserActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " <i>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</i>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    const v0, 0x7f0b0141

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    iget v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->e:I

    if-ne v1, v4, :cond_2

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080080

    invoke-virtual {p0, v3}, Lcom/kms/antivirus/gui/AvUserActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " <i>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</i>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    :goto_1
    iget v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:I

    if-ne v0, v4, :cond_0

    iget v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 160
    :cond_0
    const v0, 0x7f0b0142

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 162
    :cond_1
    return-object v2

    .line 131
    :pswitch_0
    const v1, 0x7f0802c8

    .line 132
    goto :goto_0

    .line 136
    :pswitch_1
    const v1, 0x7f0802c9

    .line 137
    goto/16 :goto_0

    .line 153
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f080081

    invoke-virtual {p0, v3}, Lcom/kms/antivirus/gui/AvUserActionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " <i>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "</i>"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 127
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected final a(I)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 82
    const v0, 0x7f0b0142

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 83
    packed-switch p1, :pswitch_data_0

    .line 119
    :goto_0
    return-void

    .line 86
    :pswitch_0
    iget v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:I

    if-ne v1, v2, :cond_1

    .line 88
    invoke-static {v2}, LcA;->a(I)V

    .line 89
    invoke-static {v0}, LcA;->a(Z)V

    .line 93
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->finish()V

    goto :goto_0

    .line 91
    :cond_1
    iget v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:I

    if-ne v0, v3, :cond_0

    .line 92
    invoke-static {v2}, Lcom/kms/antivirus/AvApplicationsMonitor;->a(I)V

    goto :goto_1

    .line 103
    :pswitch_1
    iget v1, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:I

    if-ne v1, v2, :cond_3

    .line 105
    invoke-static {v4}, LcA;->a(I)V

    .line 106
    invoke-static {v0}, LcA;->a(Z)V

    .line 110
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->finish()V

    goto :goto_0

    .line 108
    :cond_3
    iget v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:I

    if-ne v0, v3, :cond_2

    .line 109
    invoke-static {v4}, Lcom/kms/antivirus/AvApplicationsMonitor;->a(I)V

    goto :goto_2

    .line 113
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSHelpActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 114
    const-string v1, "com.kms.gui.helpid"

    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->c_()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 83
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 168
    const v0, 0x7f060013

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const v1, 0x7f08007e

    .line 41
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 42
    const-string v0, "com.kms.useraction.info"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->a:Ljava/lang/String;

    .line 43
    const-string v0, "com.kms.useraction.file"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->b:Ljava/lang/String;

    .line 44
    const-string v0, "com.kms.useraction.mode"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->e:I

    .line 45
    const-string v0, "com.kms.useraction.type"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->c:Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;

    .line 46
    const-string v0, "com.kms.useraction.launchedfrom"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:I

    .line 47
    iget v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->e:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 49
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->c:Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;

    sget-object v2, Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;->Riskware:Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->c:Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;

    sget-object v2, Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;->Adware:Lcom/kavsdk/antivirus/AvObjectScanner$ThreatType;

    if-ne v0, v2, :cond_1

    :cond_0
    const v0, 0x7f0802ca

    :goto_0
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/kms/antivirus/gui/AvUserActionActivity;->a(I[Ljava/lang/String;)V

    .line 57
    :goto_1
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonUserActionActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    const v1, 0x7f02003c

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 60
    return-void

    :cond_1
    move v0, v1

    .line 49
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f07000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/kms/antivirus/gui/AvUserActionActivity;->a(I[Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 65
    iget v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 67
    invoke-static {}, LcA;->k()V

    .line 73
    :cond_0
    :goto_0
    invoke-super {p0}, Lcom/kms/gui/KMSCommonUserActionActivity;->onDestroy()V

    .line 74
    return-void

    .line 69
    :cond_1
    iget v0, p0, Lcom/kms/antivirus/gui/AvUserActionActivity;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 71
    invoke-static {}, Lcom/kms/antivirus/AvApplicationsMonitor;->b()V

    goto :goto_0
.end method
