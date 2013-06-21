.class final Lcom/thinkyeah/smartlock/ds;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/dr;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/dr;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ds;->a:Lcom/thinkyeah/smartlock/dr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ds;->a:Lcom/thinkyeah/smartlock/dr;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/dr;->j()Landroid/support/v4/app/g;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->k()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/di;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/di;->G()V

    :cond_0
    return-void
.end method
