.class final Lcom/thinkyeah/smartlock/ei;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/eg;

.field private final synthetic b:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/eg;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/ei;->a:Lcom/thinkyeah/smartlock/eg;

    iput-object p2, p0, Lcom/thinkyeah/smartlock/ei;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ei;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/thinkyeah/smartlock/ei;->a:Lcom/thinkyeah/smartlock/eg;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/eg;->j()Landroid/support/v4/app/g;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-static {v0, v1}, Lcom/thinkyeah/smartlock/SmartLockActivity;->a(Lcom/thinkyeah/smartlock/SmartLockActivity;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0
.end method
