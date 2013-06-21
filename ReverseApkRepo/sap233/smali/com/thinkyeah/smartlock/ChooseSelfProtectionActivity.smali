.class public Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;
.super Landroid/support/v4/app/g;


# instance fields
.field private m:Lcom/thinkyeah/smartlock/ap;

.field private n:Lcom/thinkyeah/common/thinklist/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    new-instance v0, Lcom/thinkyeah/smartlock/ag;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/ag;-><init>(Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->n:Lcom/thinkyeah/common/thinklist/i;

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;)Lcom/thinkyeah/smartlock/ap;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->m:Lcom/thinkyeah/smartlock/ap;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ap;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->m:Lcom/thinkyeah/smartlock/ap;

    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v1, Lcom/thinkyeah/smartlock/ah;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/ah;-><init>(Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Lcom/thinkyeah/common/thinklist/h;

    const v2, 0x7f090076

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->m:Lcom/thinkyeah/smartlock/ap;

    iget-object v3, v3, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v4, "LockSetting"

    invoke-static {v3, v4, v6}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {v0, p0, v5, v2, v3}, Lcom/thinkyeah/common/thinklist/h;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    const v2, 0x7f09007a

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/h;->setComment(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->n:Lcom/thinkyeah/common/thinklist/i;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/h;->setToggleButtonClickListener(Lcom/thinkyeah/common/thinklist/i;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/thinkyeah/common/thinklist/h;

    const v2, 0x7f090077

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->m:Lcom/thinkyeah/smartlock/ap;

    iget-object v3, v3, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v4, "LockAndroidMarket"

    invoke-static {v3, v4, v5}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    invoke-direct {v0, p0, v6, v2, v3}, Lcom/thinkyeah/common/thinklist/h;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    const v2, 0x7f09007b

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/h;->setComment(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->n:Lcom/thinkyeah/common/thinklist/i;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/h;->setToggleButtonClickListener(Lcom/thinkyeah/common/thinklist/i;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/thinkyeah/common/thinklist/h;

    const/4 v2, 0x2

    const v3, 0x7f090078

    invoke-virtual {p0, v3}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->m:Lcom/thinkyeah/smartlock/ap;

    iget-object v4, v4, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v5, "LockInstallApp"

    invoke-static {v4, v5, v6}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/thinkyeah/common/thinklist/h;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    const v2, 0x7f09007c

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/h;->setComment(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->n:Lcom/thinkyeah/common/thinklist/i;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/h;->setToggleButtonClickListener(Lcom/thinkyeah/common/thinklist/i;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/thinkyeah/common/thinklist/h;

    const/4 v2, 0x3

    const v3, 0x7f090079

    invoke-virtual {p0, v3}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->m:Lcom/thinkyeah/smartlock/ap;

    iget-object v4, v4, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v5, "LockUninstallApp"

    invoke-static {v4, v5, v6}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/thinkyeah/common/thinklist/h;-><init>(Landroid/content/Context;ILjava/lang/String;Z)V

    const v2, 0x7f09007d

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/h;->setComment(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->n:Lcom/thinkyeah/common/thinklist/i;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/h;->setToggleButtonClickListener(Lcom/thinkyeah/common/thinklist/i;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0b001b

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/common/thinklist/ThinkList;

    new-instance v2, Lcom/thinkyeah/common/thinklist/b;

    invoke-direct {v2, v1}, Lcom/thinkyeah/common/thinklist/b;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/ThinkList;->setAdapter(Lcom/thinkyeah/common/thinklist/b;)V

    return-void
.end method

.method public onUserLeaveHint()V
    .locals 0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseSelfProtectionActivity;->finish()V

    return-void
.end method
