.class final Lcom/tapjoy/q;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/n;


# direct methods
.method constructor <init>(Lcom/tapjoy/n;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/q;->a:Lcom/tapjoy/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
