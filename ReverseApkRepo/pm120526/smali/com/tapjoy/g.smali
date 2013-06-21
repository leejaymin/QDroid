.class final Lcom/tapjoy/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/tapjoy/f;


# direct methods
.method constructor <init>(Lcom/tapjoy/f;)V
    .locals 0

    iput-object p1, p0, Lcom/tapjoy/g;->a:Lcom/tapjoy/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
