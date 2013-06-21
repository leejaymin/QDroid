.class public Lcom/kms/additional/gui/AboutActivity;
.super Lcom/kms/gui/KMSBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/kms/gui/KMSBaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b_()I
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->a:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/kms/additional/gui/AboutActivity;->finish()V

    .line 58
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 27
    invoke-super {p0, p1}, Lcom/kms/gui/KMSBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0, v1}, Lcom/kms/additional/gui/AboutActivity;->a(II)V

    .line 29
    invoke-virtual {p0}, Lcom/kms/additional/gui/AboutActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 30
    invoke-virtual {p0}, Lcom/kms/additional/gui/AboutActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 31
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 32
    invoke-virtual {p0}, Lcom/kms/additional/gui/AboutActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 34
    const v0, 0x7f0b000e

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->a:Landroid/widget/Button;

    .line 35
    iget-object v0, p0, Lcom/kms/additional/gui/AboutActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    const v0, 0x7f0b000d

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, LaR;

    invoke-direct {v1, p0}, LaR;-><init>(Lcom/kms/additional/gui/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/kms/additional/gui/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 47
    const v1, 0x7f080184

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/kms/additional/gui/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/kms/additional/gui/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.kms"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 63
    packed-switch p1, :pswitch_data_0

    .line 82
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 67
    :pswitch_0
    new-instance v0, Les;

    invoke-direct {v0, p0}, Les;-><init>(Landroid/content/Context;)V

    const v1, 0x7f08029f

    invoke-virtual {v0, v1}, Les;->a(I)Les;

    move-result-object v0

    const-string v1, "external_code.html"

    invoke-static {v1, p0}, Lfp;->a(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Les;->a(Ljava/lang/CharSequence;)Les;

    move-result-object v0

    const v1, 0x7f0802a0

    new-instance v2, LaS;

    invoke-direct {v2, p0}, LaS;-><init>(Lcom/kms/additional/gui/AboutActivity;)V

    invoke-virtual {v0, v1, v2}, Les;->a(ILandroid/content/DialogInterface$OnClickListener;)Les;

    move-result-object v0

    invoke-virtual {v0}, Les;->a()Ler;

    move-result-object v0

    goto :goto_0

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
