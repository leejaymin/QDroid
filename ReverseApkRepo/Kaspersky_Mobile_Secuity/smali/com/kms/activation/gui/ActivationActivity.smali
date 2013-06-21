.class public Lcom/kms/activation/gui/ActivationActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements LaM;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:LaN;

.field private c:Landroid/app/ProgressDialog;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Boolean;

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 38
    new-instance v0, LaN;

    invoke-direct {v0, p0}, LaN;-><init>(LaM;)V

    iput-object v0, p0, Lcom/kms/activation/gui/ActivationActivity;->b:LaN;

    .line 43
    new-instance v0, Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/Boolean;-><init>(Z)V

    iput-object v0, p0, Lcom/kms/activation/gui/ActivationActivity;->e:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic a(Lcom/kms/activation/gui/ActivationActivity;)Ljava/lang/Boolean;
    .locals 1
    .parameter

    .prologue
    .line 33
    iget-object v0, p0, Lcom/kms/activation/gui/ActivationActivity;->e:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static synthetic a(Lcom/kms/activation/gui/ActivationActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 33
    iput-object p1, p0, Lcom/kms/activation/gui/ActivationActivity;->e:Ljava/lang/Boolean;

    return-object p1
.end method

.method private a(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 270
    const v0, 0x7f0b0073

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 271
    const v1, 0x7f0b0010

    invoke-virtual {p0, v1}, Lcom/kms/activation/gui/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 286
    const v1, 0x7f0b0011

    invoke-virtual {p0, v1}, Lcom/kms/activation/gui/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 287
    const v1, 0x7f0b0012

    invoke-virtual {p0, v1}, Lcom/kms/activation/gui/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 288
    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 292
    :cond_0
    const v0, 0x7f0b0015

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800ce

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 293
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0800cf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 296
    return-void
.end method

.method public static synthetic b(Lcom/kms/activation/gui/ActivationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/kms/activation/gui/ActivationActivity;->c()V

    return-void
.end method

.method public static synthetic c(Lcom/kms/activation/gui/ActivationActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 33
    iget v0, p0, Lcom/kms/activation/gui/ActivationActivity;->f:I

    return v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 262
    invoke-static {p0}, Lfp;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-static {p0}, LfQ;->a(Landroid/content/Context;)V

    .line 266
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 123
    invoke-static {}, Lgj;->b()V

    .line 124
    invoke-virtual {p0}, Lcom/kms/activation/gui/ActivationActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    invoke-virtual {v0}, Lcom/kms/kmsshared/KMSApplication;->b()V

    .line 125
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/ActivationActivity;->startActivity(Landroid/content/Intent;)V

    .line 127
    invoke-virtual {p0}, Lcom/kms/activation/gui/ActivationActivity;->finish()V

    .line 128
    return-void
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 109
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kms/activation/gui/ActivationActivity;->d:Ljava/lang/String;

    .line 111
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 92
    iget-object v0, p0, Lcom/kms/activation/gui/ActivationActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 96
    invoke-static {p0}, Lfp;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    const v0, 0x7f0801b8

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/activation/gui/ActivationActivity;->d:Ljava/lang/String;

    .line 102
    :goto_0
    invoke-virtual {p0}, Lcom/kms/activation/gui/ActivationActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/kms/kmsshared/KMSApplication;

    .line 103
    iget-object v1, p0, Lcom/kms/activation/gui/ActivationActivity;->b:LaN;

    iget-object v2, p0, Lcom/kms/activation/gui/ActivationActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/kms/kmsshared/KMSApplication;->a(LaN;Ljava/lang/String;)I

    .line 105
    :cond_0
    return-void

    .line 100
    :cond_1
    const v0, 0x7f0801b7

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/activation/gui/ActivationActivity;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 49
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const v0, 0x7f030001

    const v2, 0x7f0b000f

    invoke-virtual {p0, v0, v2}, Lcom/kms/activation/gui/ActivationActivity;->a(II)V

    .line 53
    invoke-direct {p0, v1}, Lcom/kms/activation/gui/ActivationActivity;->a(Z)V

    .line 54
    const v0, 0x7f0b0017

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/ActivationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/activation/gui/ActivationActivity;->a:Landroid/widget/Button;

    .line 55
    iget-object v0, p0, Lcom/kms/activation/gui/ActivationActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 57
    invoke-static {p0}, LaE;->a(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/kms/activation/gui/ActivationActivity;->f:I

    .line 58
    const-class v2, Lgd;

    monitor-enter v2

    .line 60
    :try_start_0
    invoke-virtual {v0}, Lgd;->a()V

    .line 61
    iget v0, v0, Lgd;->s:I

    iget v3, p0, Lcom/kms/activation/gui/ActivationActivity;->f:I

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/kms/activation/gui/ActivationActivity;->e:Ljava/lang/Boolean;

    .line 62
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    move v0, v1

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 132
    packed-switch p1, :pswitch_data_0

    .line 245
    :pswitch_0
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 134
    :pswitch_1
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kms/activation/gui/ActivationActivity;->c:Landroid/app/ProgressDialog;

    .line 135
    iget-object v0, p0, Lcom/kms/activation/gui/ActivationActivity;->c:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 136
    iget-object v0, p0, Lcom/kms/activation/gui/ActivationActivity;->c:Landroid/app/ProgressDialog;

    const v1, 0x7f0800df

    invoke-virtual {p0, v1}, Lcom/kms/activation/gui/ActivationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/kms/activation/gui/ActivationActivity;->c:Landroid/app/ProgressDialog;

    goto :goto_0

    .line 140
    :pswitch_2
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0800e2

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 143
    :pswitch_3
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08022b

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 146
    :pswitch_4
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080121

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 148
    :pswitch_5
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080122

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 150
    :pswitch_6
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0801d0

    invoke-virtual {v0, v1}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f06001a

    invoke-static {v1, p0}, Lfp;->a(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Les;->a(Ljava/lang/CharSequence;)Les;

    move-result-object v0

    const v1, 0x7f0801d1

    new-instance v2, LaI;

    invoke-direct {v2, p0}, LaI;-><init>(Lcom/kms/activation/gui/ActivationActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f0801d2

    new-instance v2, LaH;

    invoke-direct {v2, p0}, LaH;-><init>(Lcom/kms/activation/gui/ActivationActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    .line 220
    new-instance v1, LaK;

    invoke-direct {v1, p0}, LaK;-><init>(Lcom/kms/activation/gui/ActivationActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 234
    new-instance v1, LaL;

    invoke-direct {v1, p0}, LaL;-><init>(Lcom/kms/activation/gui/ActivationActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    goto/16 :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onPause()V

    .line 81
    iget-object v1, p0, Lcom/kms/activation/gui/ActivationActivity;->e:Ljava/lang/Boolean;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/kms/activation/gui/ActivationActivity;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/kms/activation/gui/ActivationActivity;->finish()V

    .line 87
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 68
    iget-object v1, p0, Lcom/kms/activation/gui/ActivationActivity;->e:Ljava/lang/Boolean;

    monitor-enter v1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/kms/activation/gui/ActivationActivity;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/kms/activation/gui/ActivationActivity;->showDialog(I)V

    .line 73
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onResume()V

    .line 75
    return-void

    .line 73
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
