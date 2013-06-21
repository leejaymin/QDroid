.class final Lcom/tapjoy/o;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/n;


# direct methods
.method constructor <init>(Lcom/tapjoy/n;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/o;->a:Lcom/tapjoy/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    iget-object v0, p0, Lcom/tapjoy/o;->a:Lcom/tapjoy/n;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/tapjoy/n;->cancel(Z)Z

    return-void
.end method
