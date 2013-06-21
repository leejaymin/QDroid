.class public Lcom/schezard/rpgdice/rpgDice;
.super Landroid/app/Activity;
.source "rpgDice.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private aboutButton:Landroid/view/View;

.field private exitButton:Landroid/view/View;

.field private newSimulation:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 51
    :goto_0
    return-void

    .line 40
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/schezard/rpgdice/simulator;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 41
    .local v1, iSimulator:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/schezard/rpgdice/rpgDice;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 44
    .end local v1           #iSimulator:Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Lcom/schezard/rpgdice/rpgDice;->finish()V

    goto :goto_0

    .line 47
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/schezard/rpgdice/About;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, iAbout:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/rpgDice;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x7f070001
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 20
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/rpgDice;->requestWindowFeature(I)Z

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/rpgDice;->setContentView(I)V

    .line 25
    const v0, 0x7f070002

    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/rpgDice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/schezard/rpgdice/rpgDice;->aboutButton:Landroid/view/View;

    .line 26
    iget-object v0, p0, Lcom/schezard/rpgdice/rpgDice;->aboutButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/rpgDice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/schezard/rpgdice/rpgDice;->exitButton:Landroid/view/View;

    .line 28
    iget-object v0, p0, Lcom/schezard/rpgdice/rpgDice;->exitButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    const v0, 0x7f070001

    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/rpgDice;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/schezard/rpgdice/rpgDice;->newSimulation:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/schezard/rpgdice/rpgDice;->newSimulation:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const v0, 0x7f070004

    invoke-virtual {p0, v0}, Lcom/schezard/rpgdice/rpgDice;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixMMABannerXLAdView;->setRefreshTime(J)V

    .line 33
    return-void
.end method
