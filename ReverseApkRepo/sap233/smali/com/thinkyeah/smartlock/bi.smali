.class public final Lcom/thinkyeah/smartlock/bi;
.super Landroid/support/v4/app/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/d;-><init>()V

    return-void
.end method

.method public static F()Lcom/thinkyeah/smartlock/bi;
    .locals 1

    new-instance v0, Lcom/thinkyeah/smartlock/bi;

    invoke-direct {v0}, Lcom/thinkyeah/smartlock/bi;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final d()Landroid/app/Dialog;
    .locals 6

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000d

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0900ce

    new-instance v4, Lcom/thinkyeah/smartlock/bj;

    invoke-direct {v4, p0}, Lcom/thinkyeah/smartlock/bj;-><init>(Lcom/thinkyeah/smartlock/bi;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    return-object v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->finish()V

    return-void
.end method
