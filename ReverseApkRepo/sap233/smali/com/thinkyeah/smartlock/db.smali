.class final Lcom/thinkyeah/smartlock/db;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/da;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/da;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/db;->a:Lcom/thinkyeah/smartlock/da;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/db;->a:Lcom/thinkyeah/smartlock/da;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/da;->j()Landroid/support/v4/app/g;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->j()Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/cp;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/cp;->G()V

    :cond_0
    return-void
.end method
