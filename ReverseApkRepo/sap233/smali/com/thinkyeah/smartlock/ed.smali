.class final Lcom/thinkyeah/smartlock/ed;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/ec;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/ec;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ed;->a:Lcom/thinkyeah/smartlock/ec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ed;->a:Lcom/thinkyeah/smartlock/ec;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/ec;->j()Landroid/support/v4/app/g;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-static {v0}, Lcom/thinkyeah/smartlock/SmartLockActivity;->b(Lcom/thinkyeah/smartlock/SmartLockActivity;)V

    return-void
.end method
