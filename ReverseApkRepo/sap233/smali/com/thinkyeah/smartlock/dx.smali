.class final Lcom/thinkyeah/smartlock/dx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/SmartLockActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/SmartLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/dx;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/dx;->a:Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/k;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/k;->f()Ljava/util/List;

    return-void
.end method
