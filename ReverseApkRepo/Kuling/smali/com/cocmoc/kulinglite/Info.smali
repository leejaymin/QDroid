.class public Lcom/cocmoc/kulinglite/Info;
.super Landroid/app/Activity;
.source "Info.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 18
    const v1, 0x7f030002

    invoke-virtual {p0, v1}, Lcom/cocmoc/kulinglite/Info;->setContentView(I)V

    .line 20
    const v1, 0x7f08000b

    invoke-virtual {p0, v1}, Lcom/cocmoc/kulinglite/Info;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 21
    .local v0, mButton:Landroid/widget/Button;
    new-instance v1, Lcom/cocmoc/kulinglite/Info$1;

    invoke-direct {v1, p0}, Lcom/cocmoc/kulinglite/Info$1;-><init>(Lcom/cocmoc/kulinglite/Info;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    return-void
.end method
