.class final Lcom/thinkyeah/smartlock/dq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/di;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/di;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/dq;->a:Lcom/thinkyeah/smartlock/di;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/thinkyeah/smartlock/dt;->F()Lcom/thinkyeah/smartlock/dt;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/dq;->a:Lcom/thinkyeah/smartlock/di;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/di;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    return-void
.end method
