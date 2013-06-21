.class final Lcom/thinkyeah/smartlock/au;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/thinkyeah/smartlock/at;


# direct methods
.method constructor <init>(Lcom/thinkyeah/smartlock/at;)V
    .locals 0

    iput-object p1, p0, Lcom/thinkyeah/smartlock/au;->a:Lcom/thinkyeah/smartlock/at;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/au;->a:Lcom/thinkyeah/smartlock/at;

    invoke-virtual {v0}, Lcom/thinkyeah/smartlock/at;->j()Landroid/support/v4/app/g;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/g;->finish()V

    return-void
.end method
