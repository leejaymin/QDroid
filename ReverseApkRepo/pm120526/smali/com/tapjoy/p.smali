.class final Lcom/tapjoy/p;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/n;


# direct methods
.method constructor <init>(Lcom/tapjoy/n;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/p;->a:Lcom/tapjoy/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/tapjoy/p;->a:Lcom/tapjoy/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/n;->cancel(Z)Z

    iget-object v0, p0, Lcom/tapjoy/p;->a:Lcom/tapjoy/n;

    invoke-static {v0}, Lcom/tapjoy/n;->b(Lcom/tapjoy/n;)Lcom/tapjoy/h;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/p;->a:Lcom/tapjoy/n;

    invoke-virtual {v0, v1}, Lcom/tapjoy/h;->a(Lcom/tapjoy/n;)V

    return-void
.end method
