.class public Lcom/rubycell/adcenter/UpdateActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Lcom/rubycell/d/c;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a(I)Landroid/app/Dialog;
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/rubycell/adcenter/UpdateActivity;->getParent()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108008a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/rubycell/adcenter/UpdateActivity;)Lcom/rubycell/d/c;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->e:Lcom/rubycell/d/c;

    return-object v0
.end method

.method static synthetic b(Lcom/rubycell/adcenter/UpdateActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->e:Lcom/rubycell/d/c;

    invoke-virtual {v0}, Lcom/rubycell/d/c;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_publisher"

    invoke-static {p0, v1, v0}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    const-string v1, "key_update_data"

    invoke-static {p0, v1, v0}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->e:Lcom/rubycell/d/c;

    invoke-virtual {v0}, Lcom/rubycell/d/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_package_name"

    invoke-static {p0, v1, v0}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "Warning"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070004

    invoke-virtual {p0, v1}, Lcom/rubycell/adcenter/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x108008a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "OK"

    new-instance v2, Lcom/rubycell/adcenter/k;

    invoke-direct {v2, p0}, Lcom/rubycell/adcenter/k;-><init>(Lcom/rubycell/adcenter/UpdateActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "No"

    new-instance v2, Lcom/rubycell/adcenter/l;

    invoke-direct {v2, p0}, Lcom/rubycell/adcenter/l;-><init>(Lcom/rubycell/adcenter/UpdateActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/rubycell/adcenter/m;

    invoke-direct {v1, p0}, Lcom/rubycell/adcenter/m;-><init>(Lcom/rubycell/adcenter/UpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/rubycell/adcenter/UpdateActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->requestFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lcom/rubycell/adcenter/a/a;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/adcenter/UpdateActivity;->finish()V

    :cond_0
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/UpdateActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/rubycell/adcenter/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "payload"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/rubycell/d/a;->c(Ljava/lang/String;)Lcom/rubycell/d/c;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->e:Lcom/rubycell/d/c;

    :cond_1
    const v0, 0x7f0a0013

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->a:Landroid/widget/Button;

    const v0, 0x7f0a0014

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->b:Landroid/widget/Button;

    const v0, 0x7f0a0016

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->c:Landroid/widget/Button;

    const v0, 0x7f0a0017

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->d:Landroid/widget/Button;

    iget-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->e:Lcom/rubycell/d/c;

    invoke-virtual {v0}, Lcom/rubycell/d/c;->d()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->d:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/adcenter/g;

    invoke-direct {v1, p0}, Lcom/rubycell/adcenter/g;-><init>(Lcom/rubycell/adcenter/UpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/adcenter/h;

    invoke-direct {v1, p0}, Lcom/rubycell/adcenter/h;-><init>(Lcom/rubycell/adcenter/UpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->a:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/adcenter/i;

    invoke-direct {v1, p0}, Lcom/rubycell/adcenter/i;-><init>(Lcom/rubycell/adcenter/UpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/adcenter/j;

    invoke-direct {v1, p0}, Lcom/rubycell/adcenter/j;-><init>(Lcom/rubycell/adcenter/UpdateActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/rubycell/adcenter/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v1, 0x7f070005

    invoke-virtual {p0, v1}, Lcom/rubycell/adcenter/UpdateActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->f:Ljava/lang/String;

    :cond_3
    return-void

    :cond_4
    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->a:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/rubycell/adcenter/UpdateActivity;->b:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const v0, 0x7f070006

    invoke-direct {p0, v0}, Lcom/rubycell/adcenter/UpdateActivity;->a(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f070007

    invoke-direct {p0, v0}, Lcom/rubycell/adcenter/UpdateActivity;->a(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
