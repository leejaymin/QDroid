.class public final Lcom/thinkyeah/smartlock/ba;
.super Landroid/support/v4/app/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/app/d;-><init>()V

    return-void
.end method

.method public static F()Lcom/thinkyeah/smartlock/ba;
    .locals 1

    new-instance v0, Lcom/thinkyeah/smartlock/ba;

    invoke-direct {v0}, Lcom/thinkyeah/smartlock/ba;-><init>()V

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ba;->b()V

    return-object v0
.end method


# virtual methods
.method public final d()Landroid/app/Dialog;
    .locals 2

    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Landroid/support/v4/app/Fragment;->C:Landroid/support/v4/app/g;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900b9

    invoke-virtual {p0, v1}, Lcom/thinkyeah/smartlock/ba;->c(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    return-object v0
.end method
