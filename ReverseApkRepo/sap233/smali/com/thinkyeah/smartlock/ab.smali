.class final Lcom/thinkyeah/smartlock/ab;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thinkyeah/common/thinklist/e;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ab;->a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ab;->a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->a(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)Lcom/thinkyeah/common/thinklist/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/thinkyeah/common/thinklist/a;->a(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ab;->a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->a(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)Lcom/thinkyeah/common/thinklist/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/common/thinklist/a;->b()V

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ab;->a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->b(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ab;->a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->c(Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ab;->a:Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;

    const/16 v2, 0x1c

    invoke-virtual {v1, v0, v2}, Lcom/thinkyeah/smartlock/ChooseLockScreenActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
