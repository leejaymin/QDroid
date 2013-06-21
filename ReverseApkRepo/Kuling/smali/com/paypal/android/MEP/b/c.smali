.class final Lcom/paypal/android/MEP/b/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/paypal/android/MEP/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/paypal/android/MEP/b/a;


# direct methods
.method constructor <init>(Lcom/paypal/android/MEP/b/a;)V
    .locals 0

    iput-object p1, p0, Lcom/paypal/android/MEP/b/c;->a:Lcom/paypal/android/MEP/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/high16 v3, 0x7f00

    const/high16 v2, 0x7e00

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/paypal/android/MEP/b/c;->a:Lcom/paypal/android/MEP/b/a;

    iget-object v1, v1, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/paypal/android/MEP/b/c;->a:Lcom/paypal/android/MEP/b/a;

    iget-object v1, v1, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    and-int v1, v0, v2

    if-eq v1, v2, :cond_1

    :goto_0
    return-void

    :cond_1
    and-int v1, v0, v3

    if-ne v1, v3, :cond_3

    sub-int/2addr v0, v3

    iget-object v1, p0, Lcom/paypal/android/MEP/b/c;->a:Lcom/paypal/android/MEP/b/a;

    iget-object v1, v1, Lcom/paypal/android/MEP/b/a;->g:Ljava/util/Vector;

    if-eqz v1, :cond_2

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v2, "PrimaryFSID"

    iget-object v3, p0, Lcom/paypal/android/MEP/b/c;->a:Lcom/paypal/android/MEP/b/a;

    invoke-static {v3}, Lcom/paypal/android/MEP/b/a;->a(Lcom/paypal/android/MEP/b/a;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v1, "BackupFSID"

    iget-object v2, p0, Lcom/paypal/android/MEP/b/c;->a:Lcom/paypal/android/MEP/b/a;

    iget-object v2, v2, Lcom/paypal/android/MEP/b/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/paypal/android/MEP/b/c;->a:Lcom/paypal/android/MEP/b/a;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/paypal/android/MEP/b/a;->f:Z

    iget-object v0, p0, Lcom/paypal/android/MEP/b/c;->a:Lcom/paypal/android/MEP/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/paypal/android/MEP/b/a;->a(I)V

    invoke-static {}, Lcom/paypal/android/MEP/PayPal;->getInstance()Lcom/paypal/android/MEP/PayPal;

    move-result-object v0

    invoke-virtual {v0}, Lcom/paypal/android/MEP/PayPal;->get_server()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/paypal/android/MEP/b/c;->a:Lcom/paypal/android/MEP/b/a;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/paypal/android/MEP/b/a;->a(ILjava/lang/Object;)V

    :goto_2
    invoke-static {}, Lcom/paypal/android/MEP/a/e;->b()V

    goto :goto_0

    :cond_3
    and-int v1, v0, v2

    if-ne v1, v2, :cond_5

    sub-int/2addr v0, v2

    if-nez v0, :cond_4

    const-string v0, "ApplyFeeToSender"

    :goto_3
    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v2, "FeeBearer"

    invoke-virtual {v1, v2, v0}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    const-string v0, "ApplyFeeToReceiver"

    goto :goto_3

    :cond_5
    const/high16 v1, 0x7d00

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/paypal/android/MEP/b/c;->a:Lcom/paypal/android/MEP/b/a;

    invoke-static {v1}, Lcom/paypal/android/MEP/b/a;->b(Lcom/paypal/android/MEP/b/a;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/paypal/android/MEP/PayPalActivity;->_networkHandler:Lcom/paypal/android/a/a;

    const-string v2, "AddressID"

    invoke-virtual {v1, v2, v0}, Lcom/paypal/android/a/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/paypal/android/b/a;->a()Lcom/paypal/android/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/paypal/android/MEP/b/c;->a:Lcom/paypal/android/MEP/b/a;

    invoke-static {v1}, Lcom/paypal/android/MEP/b/a;->c(Lcom/paypal/android/MEP/b/a;)Lcom/paypal/android/MEP/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/paypal/android/b/a;->d(Lcom/paypal/android/b/a$b;)V

    goto :goto_2
.end method
