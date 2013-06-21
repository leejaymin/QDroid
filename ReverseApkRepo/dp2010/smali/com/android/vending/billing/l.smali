.class public final Lcom/android/vending/billing/l;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/os/Handler;

.field private c:Lcom/android/vending/billing/BillingService;

.field private d:Lcom/android/vending/billing/o;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/os/Handler;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x70

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v3, p0, Lcom/android/vending/billing/l;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/vending/billing/l;->f:Ljava/lang/String;

    const-string v0, "diceplayer_donate_id_001"

    iput-object v0, p0, Lcom/android/vending/billing/l;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/vending/billing/l;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/android/vending/billing/l;->b:Landroid/os/Handler;

    new-instance v0, Lcom/android/vending/billing/BillingService;

    invoke-direct {v0}, Lcom/android/vending/billing/BillingService;-><init>()V

    iput-object v0, p0, Lcom/android/vending/billing/l;->c:Lcom/android/vending/billing/BillingService;

    iget-object v0, p0, Lcom/android/vending/billing/l;->c:Lcom/android/vending/billing/BillingService;

    iget-object v1, p0, Lcom/android/vending/billing/l;->a:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/BillingService;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/android/vending/billing/o;

    iget-object v1, p0, Lcom/android/vending/billing/l;->b:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/vending/billing/o;-><init>(Lcom/android/vending/billing/l;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/vending/billing/l;->d:Lcom/android/vending/billing/o;

    iget-object v0, p0, Lcom/android/vending/billing/l;->d:Lcom/android/vending/billing/o;

    invoke-static {v0}, Lcom/android/vending/billing/r;->a(Lcom/android/vending/billing/p;)V

    iget-boolean v0, p0, Lcom/android/vending/billing/l;->e:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/vending/billing/l;->e:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/vending/billing/l;->c:Lcom/android/vending/billing/BillingService;

    invoke-virtual {v0}, Lcom/android/vending/billing/BillingService;->a()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/billing/l;->b:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/l;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/vending/billing/l;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v0, p0, Lcom/android/vending/billing/l;->e:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/vending/billing/l;->c:Lcom/android/vending/billing/BillingService;

    const-string v1, "inapp"

    invoke-virtual {v0, v1}, Lcom/android/vending/billing/BillingService;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/vending/billing/l;->b:Landroid/os/Handler;

    const/16 v1, 0x79

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/l;->b:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/vending/billing/l;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-boolean v0, p0, Lcom/android/vending/billing/l;->e:Z

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/billing/l;->e:Z

    iget-boolean v0, p0, Lcom/android/vending/billing/l;->e:Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/vending/billing/l;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/android/vending/billing/l;->a:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/android/vending/billing/l;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/vending/billing/l;->b:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/android/vending/billing/l;->d:Lcom/android/vending/billing/o;

    invoke-static {v0}, Lcom/android/vending/billing/r;->a(Lcom/android/vending/billing/p;)V

    return-void
.end method

.method public final a(I)V
    .locals 4

    const/16 v3, 0x70

    const-string v0, "diceplayer_donate_id_001"

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/vending/billing/l;->c:Lcom/android/vending/billing/BillingService;

    const-string v2, "inapp"

    invoke-virtual {v1, v0, v2}, Lcom/android/vending/billing/BillingService;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/billing/l;->b:Landroid/os/Handler;

    const/16 v1, 0x7a

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vending/billing/l;->b:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/vending/billing/l;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void

    :pswitch_0
    const-string v0, "diceplayer_donate_id_001"

    goto :goto_0

    :pswitch_1
    const-string v0, "diceplayer_donate_id_002"

    goto :goto_0

    :pswitch_2
    const-string v0, "diceplayer_donate_id_003"

    goto :goto_0

    :pswitch_3
    const-string v0, "diceplayer_donate_id_004"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcom/android/vending/billing/l;->d:Lcom/android/vending/billing/o;

    invoke-static {}, Lcom/android/vending/billing/r;->a()V

    return-void
.end method

.method public final c()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Americano"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Ics Americano"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Latte"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Ics Latte"

    aput-object v2, v0, v1

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/vending/billing/l;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0a00c3

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00c4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00a5

    new-instance v2, Lcom/android/vending/billing/m;

    invoke-direct {v2, p0}, Lcom/android/vending/billing/m;-><init>(Lcom/android/vending/billing/l;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00a6

    new-instance v2, Lcom/android/vending/billing/n;

    invoke-direct {v2, p0}, Lcom/android/vending/billing/n;-><init>(Lcom/android/vending/billing/l;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
