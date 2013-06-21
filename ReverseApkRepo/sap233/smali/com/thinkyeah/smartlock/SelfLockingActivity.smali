.class public Lcom/thinkyeah/smartlock/SelfLockingActivity;
.super Lcom/thinkyeah/smartlock/bn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/thinkyeah/smartlock/bn;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/thinkyeah/smartlock/SelfLockingActivity;->o:Landroid/widget/ImageView;

    const v1, 0x7f020023

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method protected final a(Ljava/lang/String;)Z
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/SelfLockingActivity;->startActivity(Landroid/content/Intent;)V

    const v0, 0x7f040003

    const v1, 0x7f040004

    invoke-virtual {p0, v0, v1}, Lcom/thinkyeah/smartlock/SelfLockingActivity;->overridePendingTransition(II)V

    const/4 v0, 0x1

    return v0
.end method

.method protected final g()V
    .locals 0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/SelfLockingActivity;->finish()V

    return-void
.end method

.method protected final h()V
    .locals 0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/SelfLockingActivity;->finish()V

    return-void
.end method

.method protected final i()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/thinkyeah/smartlock/SmartLockActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/SelfLockingActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
