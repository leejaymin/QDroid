.class public final Lcom/thinkyeah/smartlock/bg;
.super Landroid/support/v4/app/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/d;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/thinkyeah/smartlock/bg;
    .locals 3

    new-instance v0, Lcom/thinkyeah/smartlock/bg;

    invoke-direct {v0}, Lcom/thinkyeah/smartlock/bg;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "message"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/bg;->e(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public final d()Landroid/app/Dialog;
    .locals 3

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->q:Landroid/os/Bundle;

    const-string v1, "message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09004b

    new-instance v2, Lcom/thinkyeah/smartlock/bh;

    invoke-direct {v2, p0}, Lcom/thinkyeah/smartlock/bh;-><init>(Lcom/thinkyeah/smartlock/bg;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->finish()V

    return-void
.end method
