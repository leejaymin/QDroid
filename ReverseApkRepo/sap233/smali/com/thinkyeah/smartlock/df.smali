.class final Lcom/thinkyeah/smartlock/df;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/dd;

.field private final synthetic b:Landroid/widget/CheckBox;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/dd;Landroid/widget/CheckBox;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/df;->a:Lcom/thinkyeah/smartlock/dd;

    iput-object p2, p0, Lcom/thinkyeah/smartlock/df;->b:Landroid/widget/CheckBox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/df;->b:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thinkyeah/smartlock/df;->a:Lcom/thinkyeah/smartlock/dd;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/dd;->j()Landroid/support/v4/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/g;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ap;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/thinkyeah/smartlock/ap;->a(Z)V

    :cond_0
    return-void
.end method
