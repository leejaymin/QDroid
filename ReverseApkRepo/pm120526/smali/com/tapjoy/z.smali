.class final Lcom/tapjoy/z;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/y;


# direct methods
.method constructor <init>(Lcom/tapjoy/y;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/z;->a:Lcom/tapjoy/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method