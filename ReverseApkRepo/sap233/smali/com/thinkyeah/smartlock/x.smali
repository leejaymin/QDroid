.class final Lcom/thinkyeah/smartlock/x;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/x;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/x;->a:Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ChooseLockPatternActivity;->n:Lcom/thinkyeah/smartlock/view/LockPatternView;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a()V

    return-void
.end method
