.class public Lcom/kms/antispam/gui/CallListActivity;
.super Lcom/kms/gui/KMSCommonContactsActivity;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Ljava/util/Vector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/kms/gui/KMSCommonContactsActivity;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput v0, p0, Lcom/kms/antispam/gui/CallListActivity;->a:I

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/kms/antispam/gui/CallListActivity;->b:Ljava/util/Vector;

    return-void
.end method

.method public static synthetic a(Lcom/kms/antispam/gui/CallListActivity;)Ljava/util/Vector;
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/kms/antispam/gui/CallListActivity;->b:Ljava/util/Vector;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/antispam/gui/CallListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/kms/antispam/gui/CallListActivity;->i()V

    return-void
.end method


# virtual methods
.method protected final a(I)V
    .locals 3
    .parameter

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/kms/antispam/gui/CallListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 49
    const-string v2, "phoneNumber"

    iget-object v0, p0, Lcom/kms/antispam/gui/CallListActivity;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LeI;

    iget-object v0, v0, LeI;->f:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    const/4 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/kms/antispam/gui/CallListActivity;->setResult(ILandroid/content/Intent;)V

    .line 51
    invoke-virtual {p0}, Lcom/kms/antispam/gui/CallListActivity;->finish()V

    .line 52
    return-void
.end method

.method protected final a(Landroid/view/View;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 88
    iget-object v0, p0, Lcom/kms/antispam/gui/CallListActivity;->b:Ljava/util/Vector;

    invoke-virtual {v0, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LeD;

    .line 89
    const v1, 0x7f0b0039

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 90
    iget-wide v2, v0, LeD;->a:J

    const/16 v4, 0x15

    invoke-static {p0, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    .line 93
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-wide v0, v0, LeD;->a:J

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 95
    return-void
.end method

.method protected final b()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method protected final b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    const/4 v0, 0x0

    return v0
.end method

.method protected final c()Ljava/util/Vector;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/kms/antispam/gui/CallListActivity;->b:Ljava/util/Vector;

    return-object v0
.end method

.method protected final c_()I
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method protected final d()I
    .locals 1

    .prologue
    .line 78
    const v0, 0x7f03000b

    return v0
.end method

.method protected final e()I
    .locals 1

    .prologue
    .line 83
    const v0, 0x7f03000c

    return v0
.end method

.method protected final f()V
    .locals 3

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/kms/antispam/gui/CallListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    const-string v1, "antispam.gui.calllog.color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    const-string v1, "antispam.gui.calllog.color"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/kms/antispam/gui/CallListActivity;->a:I

    .line 111
    const v0, 0x7f0b0038

    invoke-virtual {p0, v0}, Lcom/kms/antispam/gui/CallListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 112
    iget v1, p0, Lcom/kms/antispam/gui/CallListActivity;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 113
    const v1, 0x7f080249

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, LbC;

    invoke-direct {v1, p0}, LbC;-><init>(Lcom/kms/antispam/gui/CallListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 207
    return-void

    .line 116
    :cond_1
    const v1, 0x7f08024a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 36
    const v0, 0x7f080248

    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/kms/antispam/gui/CallListActivity;->a(IIII)V

    .line 37
    invoke-super {p0, p1}, Lcom/kms/gui/KMSCommonContactsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    return-void
.end method
