.class final Lcom/thinkyeah/smartlock/dz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/dy;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/dy;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/dz;->a:Lcom/thinkyeah/smartlock/dy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/dz;->a:Lcom/thinkyeah/smartlock/dy;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->f()Landroid/support/v4/app/k;

    move-result-object v0

    const-string v1, "notLicensedDialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/thinkyeah/smartlock/bl;->F()Lcom/thinkyeah/smartlock/bl;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/dz;->a:Lcom/thinkyeah/smartlock/dy;

    iget-object v1, v1, Lcom/thinkyeah/smartlock/dy;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/SmartLockActivity;->f()Landroid/support/v4/app/k;

    move-result-object v1

    const-string v2, "notLicensedDialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
