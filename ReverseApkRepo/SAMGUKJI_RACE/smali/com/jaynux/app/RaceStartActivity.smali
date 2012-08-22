.class public Lcom/jaynux/app/RaceStartActivity;
.super Landroid/app/Activity;
.source "RaceStartActivity.java"


# instance fields
.field pOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 34
    new-instance v0, Lcom/jaynux/app/RaceStartActivity$1;

    invoke-direct {v0, p0}, Lcom/jaynux/app/RaceStartActivity$1;-><init>(Lcom/jaynux/app/RaceStartActivity;)V

    iput-object v0, p0, Lcom/jaynux/app/RaceStartActivity;->pOnClickListener:Landroid/view/View$OnClickListener;

    .line 14
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const v4, 0x7f030001

    invoke-virtual {p0, v4}, Lcom/jaynux/app/RaceStartActivity;->setContentView(I)V

    .line 23
    const v4, 0x7f090002

    invoke-virtual {p0, v4}, Lcom/jaynux/app/RaceStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 24
    .local v3, GameStartBtn:Landroid/widget/Button;
    const v4, 0x7f090003

    invoke-virtual {p0, v4}, Lcom/jaynux/app/RaceStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 25
    .local v0, GamePictorialBtn:Landroid/widget/Button;
    const v4, 0x7f090004

    invoke-virtual {p0, v4}, Lcom/jaynux/app/RaceStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 26
    .local v2, GameSaveListBtn:Landroid/widget/Button;
    const v4, 0x7f090005

    invoke-virtual {p0, v4}, Lcom/jaynux/app/RaceStartActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 27
    .local v1, GamePreferenceBtn:Landroid/widget/Button;
    iget-object v4, p0, Lcom/jaynux/app/RaceStartActivity;->pOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v4, p0, Lcom/jaynux/app/RaceStartActivity;->pOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    iget-object v4, p0, Lcom/jaynux/app/RaceStartActivity;->pOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v4, p0, Lcom/jaynux/app/RaceStartActivity;->pOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method
