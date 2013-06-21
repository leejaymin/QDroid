.class final Lcom/thinkyeah/smartlock/ad;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ad;->a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ad;->a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->d(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ad;->a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->e(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)I

    move-result v1

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v2, "LockScreenSelection"

    invoke-static {v0, v2, v1}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ad;->a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->e(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ad;->a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->d(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ad;->a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;

    invoke-static {v1}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->f(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v2, "LockScreenUri"

    invoke-static {v0, v2, v1}, Lcom/thinkyeah/smartlock/ai;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ad;->a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->finish()V

    return-void
.end method
