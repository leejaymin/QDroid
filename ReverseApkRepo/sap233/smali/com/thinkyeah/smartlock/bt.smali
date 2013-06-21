.class final Lcom/thinkyeah/smartlock/bt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/bs;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/bs;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/bt;->a:Lcom/thinkyeah/smartlock/bs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bt;->a:Lcom/thinkyeah/smartlock/bs;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/bs;->a:Lcom/thinkyeah/smartlock/bn;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/bn;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a()V

    return-void
.end method
