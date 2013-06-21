.class public Lcom/kms/rateus/gui/KMSRateUsActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a_()Z
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    return v0
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/kms/rateus/gui/KMSRateUsActivity;->c:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 107
    if-eqz p2, :cond_1

    .line 108
    iget-object v0, p0, Lcom/kms/rateus/gui/KMSRateUsActivity;->b:Landroid/widget/Button;

    const v1, 0x7f0802a3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/kms/rateus/gui/KMSRateUsActivity;->b:Landroid/widget/Button;

    const v1, 0x7f0802a2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 73
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgg;

    .line 75
    iget-object v1, p0, Lcom/kms/rateus/gui/KMSRateUsActivity;->b:Landroid/widget/Button;

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/kms/rateus/gui/KMSRateUsActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/32 v3, 0x337f9800

    add-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Lgg;->a(ILjava/lang/Object;)V

    .line 77
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lgg;->a(ILjava/lang/Object;)V

    .line 82
    :goto_0
    const/4 v1, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgg;->a(ILjava/lang/Object;)V

    .line 83
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Lgg;->a(ILjava/lang/Object;)V

    .line 84
    const/4 v1, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lgg;->a(ILjava/lang/Object;)V

    .line 85
    invoke-virtual {v0}, Lgg;->a()V

    .line 86
    invoke-static {}, Lcom/kms/kmsshared/KMSApplication;->f()V

    .line 88
    iget-object v0, p0, Lcom/kms/rateus/gui/KMSRateUsActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "market://details?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/kms/rateus/gui/KMSRateUsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 90
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 92
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/kms/rateus/gui/KMSRateUsActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/kms/rateus/gui/KMSRateUsActivity;->finish()V

    .line 102
    return-void

    .line 79
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Lgg;->a(ILjava/lang/Object;)V

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://market.android.com/details?id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/kms/rateus/gui/KMSRateUsActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 97
    invoke-virtual {p0, v0}, Lcom/kms/rateus/gui/KMSRateUsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const v0, 0x7f030036

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/kms/rateus/gui/KMSRateUsActivity;->a(II)V

    .line 50
    invoke-virtual {p0}, Lcom/kms/rateus/gui/KMSRateUsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 51
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 52
    invoke-virtual {p0}, Lcom/kms/rateus/gui/KMSRateUsActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 54
    const v0, 0x7f0b0106

    invoke-virtual {p0, v0}, Lcom/kms/rateus/gui/KMSRateUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/rateus/gui/KMSRateUsActivity;->a:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lcom/kms/rateus/gui/KMSRateUsActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f0b0107

    invoke-virtual {p0, v0}, Lcom/kms/rateus/gui/KMSRateUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/rateus/gui/KMSRateUsActivity;->b:Landroid/widget/Button;

    .line 58
    iget-object v0, p0, Lcom/kms/rateus/gui/KMSRateUsActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f0b0105

    invoke-virtual {p0, v0}, Lcom/kms/rateus/gui/KMSRateUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/kms/rateus/gui/KMSRateUsActivity;->c:Landroid/widget/CheckBox;

    .line 61
    iget-object v0, p0, Lcom/kms/rateus/gui/KMSRateUsActivity;->c:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 62
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 32
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onStop()V

    .line 33
    invoke-virtual {p0}, Lcom/kms/rateus/gui/KMSRateUsActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/kms/rateus/gui/KMSRateUsActivity;->finish()V

    .line 37
    :cond_0
    return-void
.end method
