.class final Lccc71/bmw/lib/o;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lccc71/bmw/lib/bmw_calibration;


# direct methods
.method constructor <init>(Lccc71/bmw/lib/bmw_calibration;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lccc71/bmw/lib/o;->a:Lccc71/bmw/lib/bmw_calibration;

    .line 633
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a(Lccc71/bmw/lib/o;)Lccc71/bmw/lib/bmw_calibration;
    .locals 1
    .parameter

    .prologue
    .line 633
    iget-object v0, p0, Lccc71/bmw/lib/o;->a:Lccc71/bmw/lib/bmw_calibration;

    return-object v0
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    .line 638
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 640
    iget-object v0, p0, Lccc71/bmw/lib/o;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->a(Lccc71/bmw/lib/bmw_calibration;)Landroid/os/Handler;

    move-result-object v0

    invoke-static {}, Lccc71/bmw/lib/bmw_calibration;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 642
    sget-boolean v0, Lccc71/bmw/lib/bmw_watcher;->y:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccc71/bmw/lib/o;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_settings;->l(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 644
    iget-object v0, p0, Lccc71/bmw/lib/o;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-virtual {v0}, Lccc71/bmw/lib/bmw_calibration;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lccc71/bmw/lib/e;->bb:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 645
    sget v0, Lccc71/bmw/lib/d;->cm:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 646
    sget v1, Lccc71/bmw/lib/d;->aZ:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 647
    sget v3, Lccc71/bmw/lib/bmw_watcher;->m:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 648
    sget v3, Lccc71/bmw/lib/d;->db:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 649
    new-instance v4, Lccc71/bmw/lib/p;

    invoke-direct {v4, p0}, Lccc71/bmw/lib/p;-><init>(Lccc71/bmw/lib/o;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lccc71/bmw/lib/o;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v4, Lccc71/bmw/lib/g;->bJ:I

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 659
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    new-instance v4, Lccc71/bmw/lib/q;

    invoke-direct {v4, p0, v0, v1}, Lccc71/bmw/lib/q;-><init>(Lccc71/bmw/lib/o;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 694
    const/high16 v2, 0x104

    new-instance v3, Lccc71/bmw/lib/r;

    invoke-direct {v3, p0}, Lccc71/bmw/lib/r;-><init>(Lccc71/bmw/lib/o;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 701
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 702
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 704
    new-instance v1, Lccc71/bmw/lib/s;

    invoke-direct {v1, p0, v0}, Lccc71/bmw/lib/s;-><init>(Lccc71/bmw/lib/o;Landroid/widget/EditText;)V

    .line 710
    const-wide/16 v2, 0xc8

    .line 704
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v0, p0, Lccc71/bmw/lib/o;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->c(Lccc71/bmw/lib/bmw_calibration;)V

    .line 715
    iget-object v0, p0, Lccc71/bmw/lib/o;->a:Lccc71/bmw/lib/bmw_calibration;

    invoke-static {v0}, Lccc71/bmw/lib/bmw_calibration;->d(Lccc71/bmw/lib/bmw_calibration;)V

    goto :goto_0
.end method
