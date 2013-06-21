.class final Lcom/thinkyeah/smartlock/al;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/al;->a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/al;->a:Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;->a(Lcom/thinkyeah/smartlock/ConfirmLockPatternActivity;)Lcom/thinkyeah/smartlock/view/LockPatternView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/view/LockPatternView;->a()V

    return-void
.end method
