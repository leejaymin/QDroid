.class public Lcom/kms/antivirus/gui/AvScanFilesActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Lat;


# instance fields
.field private a:Landroid/widget/ProgressBar;

.field private b:Z

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:LcP;

.field private f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    .line 39
    new-instance v0, LcP;

    invoke-direct {v0, p0}, LcP;-><init>(Lcom/kms/antivirus/gui/AvScanFilesActivity;)V

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->e:LcP;

    .line 287
    return-void
.end method

.method public static synthetic a(Lcom/kms/antivirus/gui/AvScanFilesActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->a:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public static synthetic a(Lcom/kms/antivirus/gui/AvScanFilesActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3
    .parameter

    .prologue
    .line 157
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 158
    const v1, 0x7f0b0002

    invoke-virtual {p0, v1}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 159
    if-eqz p1, :cond_0

    .line 161
    const v2, 0x7f080031

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 162
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->f:Landroid/widget/TextView;

    const v2, 0x7f08002d

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 163
    const v0, 0x7f020080

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 172
    :goto_0
    return-void

    .line 167
    :cond_0
    const v2, 0x7f080030

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setText(I)V

    .line 168
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->f:Landroid/widget/TextView;

    const v2, 0x7f08002c

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    const v0, 0x7f020081

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public static synthetic b(Lcom/kms/antivirus/gui/AvScanFilesActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->c:Landroid/widget/TextView;

    return-object v0
.end method

.method public static synthetic b(Lcom/kms/antivirus/gui/AvScanFilesActivity;Z)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->b:Z

    return v0
.end method

.method public static synthetic c(Lcom/kms/antivirus/gui/AvScanFilesActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 176
    invoke-static {}, LcA;->j()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-static {}, LcA;->k()V

    .line 180
    :cond_0
    invoke-static {}, LcA;->b()V

    .line 181
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->finish()V

    .line 182
    return-void
.end method

.method public static synthetic d(Lcom/kms/antivirus/gui/AvScanFilesActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->b:Z

    return v0
.end method

.method public static synthetic e(Lcom/kms/antivirus/gui/AvScanFilesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->c()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public final a(I)V
    .locals 1
    .parameter

    .prologue
    .line 226
    new-instance v0, LcL;

    invoke-direct {v0, p0, p1}, LcL;-><init>(Lcom/kms/antivirus/gui/AvScanFilesActivity;I)V

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 234
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 239
    new-instance v0, LcM;

    invoke-direct {v0, p0, p1}, LcM;-><init>(Lcom/kms/antivirus/gui/AvScanFilesActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 247
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->finish()V

    .line 285
    return-void
.end method

.method public final b(I)V
    .locals 1
    .parameter

    .prologue
    .line 252
    new-instance v0, LcN;

    invoke-direct {v0, p0, p1}, LcN;-><init>(Lcom/kms/antivirus/gui/AvScanFilesActivity;I)V

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 259
    return-void
.end method

.method protected final b_()I
    .locals 1

    .prologue
    .line 307
    const/4 v0, 0x0

    return v0
.end method

.method public final c(I)V
    .locals 1
    .parameter

    .prologue
    .line 264
    new-instance v0, LcO;

    invoke-direct {v0, p0, p1}, LcO;-><init>(Lcom/kms/antivirus/gui/AvScanFilesActivity;I)V

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 45
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lcom/kavsdk/antivirus/AvObjectScanner;

    if-nez v0, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->finish()V

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    const v0, 0x7f03003b

    invoke-virtual {p0, v0, v4}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->a(II)V

    .line 53
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 54
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 55
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v5, v5, -0xa

    iput v5, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 56
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v5, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 57
    const v0, 0x7f0b010e

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->f:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 59
    new-instance v5, LcJ;

    invoke-direct {v5, p0}, LcJ;-><init>(Lcom/kms/antivirus/gui/AvScanFilesActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    const v0, 0x7f0b001a

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    new-instance v5, LcK;

    invoke-direct {v5, p0}, LcK;-><init>(Lcom/kms/antivirus/gui/AvScanFilesActivity;)V

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    const v0, 0x7f0b003e

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->a:Landroid/widget/ProgressBar;

    .line 88
    const v0, 0x7f0b0110

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->c:Landroid/widget/TextView;

    .line 89
    const v0, 0x7f0b010f

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->d:Landroid/widget/TextView;

    .line 91
    invoke-virtual {p0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 92
    const/4 v0, 0x0

    .line 93
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 96
    if-eqz v6, :cond_7

    .line 98
    const-string v0, "SCAN_PATH"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 99
    const-string v0, "SCAN_MODE"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 100
    const-string v7, "com.kms.AvScanFilesActivity.nosdcard"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 102
    :goto_1
    if-ne v0, v1, :cond_6

    .line 104
    if-nez v5, :cond_3

    move v1, v2

    .line 113
    :goto_2
    const v0, 0x7f0b0004

    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    invoke-static {p0}, LcA;->a(Lat;)V

    .line 116
    invoke-static {}, LcA;->a()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 118
    invoke-static {}, LcA;->c()I

    move-result v1

    .line 119
    invoke-static {}, LcA;->d()I

    move-result v6

    .line 120
    invoke-static {}, LcA;->j()Z

    move-result v7

    invoke-direct {p0, v7}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->a(Z)V

    .line 121
    if-lez v6, :cond_2

    .line 123
    iput-boolean v3, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->b:Z

    .line 124
    iget-object v7, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->a:Landroid/widget/ProgressBar;

    invoke-virtual {v7, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 125
    iget-object v6, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->a:Landroid/widget/ProgressBar;

    invoke-static {}, LcA;->f()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 129
    :cond_2
    and-int/lit8 v6, v1, 0x2

    if-eqz v6, :cond_4

    .line 131
    const v1, 0x7f08002b

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 132
    invoke-static {}, LcA;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lcom/kavsdk/antivirus/AvObjectScanner;

    const-string v1, "/"

    invoke-static {v0, v2, v1}, LcA;->a(Lcom/kavsdk/antivirus/AvObjectScanner;ILjava/lang/String;)Ljava/lang/Thread;

    goto/16 :goto_0

    :cond_3
    move v1, v3

    .line 110
    goto :goto_2

    .line 137
    :cond_4
    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_5

    .line 139
    const v1, 0x7f080220

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    invoke-static {}, LcA;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 142
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lcom/kavsdk/antivirus/AvObjectScanner;

    const/4 v1, 0x4

    const-string v2, "/"

    invoke-static {v0, v1, v2}, LcA;->a(Lcom/kavsdk/antivirus/AvObjectScanner;ILjava/lang/String;)Ljava/lang/Thread;

    goto/16 :goto_0

    .line 147
    :cond_5
    const v1, 0x7f08002a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 148
    invoke-static {}, LcA;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 150
    sget-object v0, Lcom/kms/kmsshared/KMSApplication;->c:Lcom/kavsdk/antivirus/AvObjectScanner;

    invoke-static {v0, v3, v5, v4}, LcA;->a(Lcom/kavsdk/antivirus/AvObjectScanner;ILjava/lang/String;Z)Ljava/lang/Thread;

    goto/16 :goto_0

    :cond_6
    move v1, v0

    goto :goto_2

    :cond_7
    move-object v5, v0

    move v0, v1

    goto/16 :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 198
    packed-switch p1, :pswitch_data_0

    .line 212
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 202
    :pswitch_0
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080033

    invoke-virtual {v0, v1}, Les;->a(I)Les;

    move-result-object v0

    const v1, 0x7f080034

    invoke-virtual {v0, v1}, Les;->b(I)Les;

    move-result-object v0

    const v1, 0x7f080035

    iget-object v2, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->e:LcP;

    invoke-virtual {v0, v1, v2}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    const v1, 0x7f080036

    iget-object v2, p0, Lcom/kms/antivirus/gui/AvScanFilesActivity;->e:LcP;

    invoke-virtual {v0, v1, v2}, Les;->b(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 198
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 219
    invoke-static {p0}, LcA;->b(Lat;)V

    .line 220
    invoke-super {p0}, Lcom/kms/gui/KMSBaseActivity;->onDestroy()V

    .line 221
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 187
    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 189
    invoke-virtual {p0, v0}, Lcom/kms/antivirus/gui/AvScanFilesActivity;->showDialog(I)V

    .line 192
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/kms/gui/KMSBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
