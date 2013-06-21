.class final Lcom/thinkyeah/smartlock/cv;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/cp;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/cv;->a:Lcom/thinkyeah/smartlock/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {}, Lcom/thinkyeah/smartlock/dd;->F()Lcom/thinkyeah/smartlock/dd;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/cv;->a:Lcom/thinkyeah/smartlock/cp;

    invoke-virtual {v1}, Lcom/thinkyeah/smartlock/cp;->l()Landroid/support/v4/app/k;

    move-result-object v1

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/k;Ljava/lang/String;)V

    return-void
.end method
