.class final Lcom/thinkyeah/smartlock/u;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;

.field private final synthetic b:Lcom/thinkyeah/smartlock/v;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;Lcom/thinkyeah/smartlock/v;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/u;->a:Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;

    iput-object p2, p0, Lcom/thinkyeah/smartlock/u;->b:Lcom/thinkyeah/smartlock/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/u;->a:Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/u;->b:Lcom/thinkyeah/smartlock/v;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/ChooseLockPasswordActivity;->a(Lcom/thinkyeah/smartlock/v;)V

    return-void
.end method
