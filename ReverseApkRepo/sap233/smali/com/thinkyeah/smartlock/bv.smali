.class final Lcom/thinkyeah/smartlock/bv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/bu;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/bu;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/bv;->a:Lcom/thinkyeah/smartlock/bu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/bv;->a:Lcom/thinkyeah/smartlock/bu;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/bu;->j()Landroid/support/v4/app/g;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/smartlock/bn;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/bn;->j()V

    return-void
.end method
