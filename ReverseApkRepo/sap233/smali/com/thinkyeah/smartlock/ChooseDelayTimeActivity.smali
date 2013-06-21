.class public Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;
.super Landroid/support/v4/app/g;


# instance fields
.field private m:Lcom/thinkyeah/smartlock/ap;

.field private n:Lcom/thinkyeah/common/thinklist/a;

.field private o:Lcom/thinkyeah/common/thinklist/e;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/g;-><init>()V

    new-instance v0, Lcom/thinkyeah/smartlock/s;

    invoke-direct {v0, p0}, Lcom/thinkyeah/smartlock/s;-><init>(Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;)V

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->o:Lcom/thinkyeah/common/thinklist/e;

    return-void
.end method

.method static synthetic a(Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;)Lcom/thinkyeah/common/thinklist/a;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->n:Lcom/thinkyeah/common/thinklist/a;

    return-object v0
.end method

.method static synthetic b(Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;)Lcom/thinkyeah/smartlock/ap;
    .locals 1

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->m:Lcom/thinkyeah/smartlock/ap;

    return-object v0
.end method

.method static synthetic c(I)I
    .locals 1

    const/4 v0, 0x1

    packed-switch p0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x5

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xa

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x14

    goto :goto_0

    :pswitch_4
    const/16 v0, 0x1e

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/g;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->requestWindowFeature(I)Z

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/thinkyeah/smartlock/ap;->a(Landroid/content/Context;)Lcom/thinkyeah/smartlock/ap;

    move-result-object v0

    iput-object v0, p0, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->m:Lcom/thinkyeah/smartlock/ap;

    const v0, 0x7f0b005d

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v6, 0x7f020057

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setBackgroundResource(I)V

    new-instance v6, Lcom/thinkyeah/smartlock/t;

    invoke-direct {v6, p0}, Lcom/thinkyeah/smartlock/t;-><init>(Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;)V

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0b0022

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f09006d

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(I)V

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    new-instance v0, Lcom/thinkyeah/common/thinklist/g;

    const v7, 0x7f09006f

    invoke-virtual {p0, v7}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, p0, v1, v7}, Lcom/thinkyeah/common/thinklist/g;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v7, p0, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->o:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v0, v7}, Lcom/thinkyeah/common/thinklist/g;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/thinkyeah/common/thinklist/g;

    const v7, 0x7f090070

    invoke-virtual {p0, v7}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, p0, v2, v7}, Lcom/thinkyeah/common/thinklist/g;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v7, p0, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->o:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v0, v7}, Lcom/thinkyeah/common/thinklist/g;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/thinkyeah/common/thinklist/g;

    const v7, 0x7f090071

    invoke-virtual {p0, v7}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, p0, v3, v7}, Lcom/thinkyeah/common/thinklist/g;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v7, p0, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->o:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v0, v7}, Lcom/thinkyeah/common/thinklist/g;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/thinkyeah/common/thinklist/g;

    const v7, 0x7f090072

    invoke-virtual {p0, v7}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, p0, v4, v7}, Lcom/thinkyeah/common/thinklist/g;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v7, p0, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->o:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v0, v7}, Lcom/thinkyeah/common/thinklist/g;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v0, Lcom/thinkyeah/common/thinklist/g;

    const v7, 0x7f090073

    invoke-virtual {p0, v7}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, p0, v5, v7}, Lcom/thinkyeah/common/thinklist/g;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    iget-object v7, p0, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->o:Lcom/thinkyeah/common/thinklist/e;

    invoke-virtual {v0, v7}, Lcom/thinkyeah/common/thinklist/g;->setThinkItemClickListener(Lcom/thinkyeah/common/thinklist/e;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->m:Lcom/thinkyeah/smartlock/ap;

    iget-object v0, v0, Lcom/thinkyeah/smartlock/ap;->a:Landroid/content/Context;

    const-string v7, "DelayTime"

    invoke-static {v0, v7, v2}, Lcom/thinkyeah/smartlock/ai;->a(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v7

    const v0, 0x7f0b000b

    invoke-virtual {p0, v0}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/thinkyeah/common/thinklist/ThinkList;

    new-instance v8, Lcom/thinkyeah/common/thinklist/a;

    sparse-switch v7, :sswitch_data_0

    :goto_0
    :sswitch_0
    invoke-direct {v8, v6, v1}, Lcom/thinkyeah/common/thinklist/a;-><init>(Ljava/util/List;I)V

    iput-object v8, p0, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->n:Lcom/thinkyeah/common/thinklist/a;

    iget-object v1, p0, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->n:Lcom/thinkyeah/common/thinklist/a;

    invoke-virtual {v0, v1}, Lcom/thinkyeah/common/thinklist/ThinkList;->setAdapter(Lcom/thinkyeah/common/thinklist/b;)V

    return-void

    :sswitch_1
    move v1, v2

    goto :goto_0

    :sswitch_2
    move v1, v3

    goto :goto_0

    :sswitch_3
    move v1, v4

    goto :goto_0

    :sswitch_4
    move v1, v5

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
        0xa -> :sswitch_2
        0x14 -> :sswitch_3
        0x1e -> :sswitch_4
    .end sparse-switch
.end method

.method public onUserLeaveHint()V
    .locals 0

    invoke-virtual {p0}, Lcom/thinkyeah/smartlock/ChooseDelayTimeActivity;->finish()V

    return-void
.end method
