.class final Lcom/thinkyeah/smartlock/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/thinkyeah/common/thinklist/e;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ae;->a:Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)V
    .locals 3

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ae;->a:Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->a(Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;)Lcom/thinkyeah/common/thinklist/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/thinkyeah/common/thinklist/a;->a(I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ae;->a:Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->a(Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;)Lcom/thinkyeah/common/thinklist/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/thinkyeah/common/thinklist/a;->b()V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ae;->a:Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;

    invoke-static {v0, p1}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->a(Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;I)V

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ae;->a:Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;

    invoke-static {v0, p1}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->b(Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ae;->a:Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;

    const/16 v2, 0x1c

    invoke-virtual {v1, v0, v2}, Lcom/thinkyeah/smartlock/ChooseLockTypeActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
