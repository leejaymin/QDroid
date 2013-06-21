.class final Lcom/thinkyeah/smartlock/cu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/cp;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/cp;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/cu;->a:Lcom/thinkyeah/smartlock/cp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/cu;->a:Lcom/thinkyeah/smartlock/cp;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/cp;->c(Lcom/thinkyeah/smartlock/cp;)Lcom/thinkyeah/smartlock/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/k;->e()V

    return-void
.end method
