.class final Lcom/thinkyeah/smartlock/aq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ap;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ap;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/aq;->a:Lcom/thinkyeah/smartlock/ap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/aq;->a:Lcom/thinkyeah/smartlock/ap;

    check-cast p2, Lcom/thinkyeah/smartlock/service/a;

    iput-object p2, v0, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/aq;->a:Lcom/thinkyeah/smartlock/ap;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/thinkyeah/smartlock/ap;->b:Lcom/thinkyeah/smartlock/service/a;

    return-void
.end method
