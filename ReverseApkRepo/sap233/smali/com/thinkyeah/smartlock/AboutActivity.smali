.class public Lcom/thinkyeah/smartlock/AboutActivity;
.super Landroid/support/v4/app/g;


# instance fields
.field private m:Lcom/thinkyeah/common/thinklist/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    new-instance v0, Lcom/thinkyeah/smartlock/a;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/a;-><init>(Lcom/thinkyeah/smartlock/AboutActivity;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/AboutActivity;->m:Lcom/thinkyeah/common/thinklist/e;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v6}, Lcom/thinkyeah/smartlock/AboutActivity;->requestWindowFeature(I)Z

    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/AboutActivity;->setContentView(I)V

    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f020057

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v1, Lcom/thinkyeah/smartlock/b;

    invoke-direct {v1, p0}, Lcom/thinkyeah/smartlock/b;-><init>(Lcom/thinkyeah/smartlock/AboutActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0900be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/AboutActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v1, ""

    :try_start_0
    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/AboutActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/thinkyeah/smartlock/cf;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Lcom/thinkyeah/common/thinklist/f;

    const v2, 0x7f0900c1

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v5, v2}, Lcom/thinkyeah/common/thinklist/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/AboutActivity;->m:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/f;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/thinkyeah/common/thinklist/f;

    const v2, 0x7f0900c2

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/AboutActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v6, v2}, Lcom/thinkyeah/common/thinklist/f;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v2, p0, Lcom/thinkyeah/smartlock/AboutActivity;->m:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/f;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/AboutActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/common/thinklist/ThinkList;

    new-instance v2, Lcom/thinkyeah/common/thinklist/b;

    invoke-direct {v2, v1}, Lcom/thinkyeah/common/thinklist/b;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v2}, Lcom/thinkyeah/common/thinklist/ThinkList;->setAdapter(Lcom/thinkyeah/common/thinklist/b;)V

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method
