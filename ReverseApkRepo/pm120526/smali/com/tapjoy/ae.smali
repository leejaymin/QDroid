.class final Lcom/tapjoy/ae;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/ad;


# direct methods
.method constructor <init>(Lcom/tapjoy/ad;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/ae;->a:Lcom/tapjoy/ad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
