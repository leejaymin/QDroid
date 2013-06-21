.class final Lcom/android/vending/billing/m;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/android/vending/billing/l;


# direct methods
.method constructor <init>(Lcom/android/vending/billing/l;)V
    .locals 0

    iput-object p1, p0, Lcom/android/vending/billing/m;->a:Lcom/android/vending/billing/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/16 v2, 0x71

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/vending/billing/m;->a:Lcom/android/vending/billing/l;

    invoke-static {v0}, Lcom/android/vending/billing/l;->b(Lcom/android/vending/billing/l;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2, v1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/m;->a:Lcom/android/vending/billing/l;

    invoke-static {v1}, Lcom/android/vending/billing/l;->b(Lcom/android/vending/billing/l;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/vending/billing/m;->a:Lcom/android/vending/billing/l;

    invoke-static {v1}, Lcom/android/vending/billing/l;->b(Lcom/android/vending/billing/l;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
