.class public Lcom/kms/gui/WelcomeActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/WelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kms/gui/WelcomeActivity;->f()V

    return-void
.end method

.method public static synthetic a(Lcom/kms/gui/WelcomeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/kms/gui/WelcomeActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 59
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 60
    const-class v1, Lgd;

    monitor-enter v1

    .line 62
    if-eqz p1, :cond_0

    .line 64
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lgd;->r:Z

    .line 66
    :cond_0
    iget v2, p0, Lcom/kms/gui/WelcomeActivity;->b:I

    iput v2, v0, Lgd;->s:I

    .line 67
    const/4 v2, 0x0

    iput-boolean v2, v0, Lgd;->f:Z

    .line 68
    const/4 v2, 0x0

    iput-boolean v2, v0, Lgd;->m:Z

    .line 69
    invoke-virtual {v0}, Lgd;->b()V

    .line 70
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 71
    invoke-direct {p0}, Lcom/kms/gui/WelcomeActivity;->c()V

    .line 72
    return-void

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic b(Lcom/kms/gui/WelcomeActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kms/gui/WelcomeActivity;->d()Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 114
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 115
    const-class v1, Lgd;

    monitor-enter v1

    .line 117
    const/4 v2, 0x1

    :try_start_0
    iput-boolean v2, v0, Lgd;->u:Z

    .line 118
    invoke-virtual {v0}, Lgd;->b()V

    .line 119
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/kms/gui/KMSEnterCodeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 121
    invoke-virtual {p0, v0}, Lcom/kms/gui/WelcomeActivity;->startActivity(Landroid/content/Intent;)V

    .line 122
    invoke-virtual {p0}, Lcom/kms/gui/WelcomeActivity;->finish()V

    .line 123
    return-void

    .line 119
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static synthetic c(Lcom/kms/gui/WelcomeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/kms/gui/WelcomeActivity;->c()V

    return-void
.end method

.method private d()Z
    .locals 3

    .prologue
    .line 128
    invoke-static {}, LfS;->a()LfS;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, LfS;->a(I)LfV;

    move-result-object v0

    check-cast v0, Lgd;

    .line 129
    const-class v1, Lgd;

    monitor-enter v1

    .line 131
    :try_start_0
    iget v0, v0, Lgd;->s:I

    iget v2, p0, Lcom/kms/gui/WelcomeActivity;->b:I

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    .line 132
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    return v0

    .line 131
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 201
    invoke-static {p0}, Lfp;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-static {p0}, LfQ;->a(Landroid/content/Context;)V

    .line 205
    :cond_0
    return-void
.end method


# virtual methods
.method protected final a_()Z
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 78
    const v0, 0x7f030057

    const v1, 0x7f0b004f

    invoke-virtual {p0, v0, v1}, Lcom/kms/gui/WelcomeActivity;->a(II)V

    .line 79
    invoke-virtual {p0}, Lcom/kms/gui/WelcomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com_kms_welcome_app_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kms/gui/WelcomeActivity;->a:Z

    .line 80
    const v0, 0x7f0b0009

    invoke-virtual {p0, v0}, Lcom/kms/gui/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    const v1, 0x7f0b000a

    invoke-virtual {p0, v1}, Lcom/kms/gui/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 82
    const v2, 0x7f0b0143

    invoke-virtual {p0, v2}, Lcom/kms/gui/WelcomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 83
    invoke-static {p0}, LaE;->a(Landroid/content/Context;)I

    move-result v3

    iput v3, p0, Lcom/kms/gui/WelcomeActivity;->b:I

    .line 85
    iget-boolean v3, p0, Lcom/kms/gui/WelcomeActivity;->a:Z

    if-eqz v3, :cond_0

    .line 87
    const v3, 0x7f080266

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 88
    const v0, 0x7f080267

    invoke-virtual {p0, v0}, Lcom/kms/gui/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    const v0, 0x7f080268

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    .line 98
    :goto_0
    new-instance v0, Lef;

    invoke-direct {v0, p0}, Lef;-><init>(Lcom/kms/gui/WelcomeActivity;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    return-void

    .line 93
    :cond_0
    const v3, 0x7f080263

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 94
    const v0, 0x7f080264

    invoke-virtual {p0, v0}, Lcom/kms/gui/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    const v0, 0x7f080265

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 152
    packed-switch p1, :pswitch_data_0

    .line 196
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 156
    :pswitch_0
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

    new-instance v2, Leh;

    invoke-direct {v2, p0}, Leh;-><init>(Lcom/kms/gui/WelcomeActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f0801d2

    new-instance v2, Leg;

    invoke-direct {v2, p0}, Leg;-><init>(Lcom/kms/gui/WelcomeActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
