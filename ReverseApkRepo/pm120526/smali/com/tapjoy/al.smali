.class final Lcom/tapjoy/al;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/ak;


# direct methods
.method constructor <init>(Lcom/tapjoy/ak;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/al;->a:Lcom/tapjoy/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
