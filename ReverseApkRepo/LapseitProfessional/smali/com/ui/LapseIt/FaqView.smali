.class public Lcom/ui/LapseIt/FaqView;
.super Landroid/app/Activity;
.source "FaqView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v4, 0x7f030007

    invoke-virtual {p0, v4}, Lcom/ui/LapseIt/FaqView;->setContentView(I)V

    .line 26
    const v4, 0x7f0b001b

    invoke-virtual {p0, v4}, Lcom/ui/LapseIt/FaqView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 28
    .local v0, faqText:Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/ui/LapseIt/FaqView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 29
    .local v1, res:Landroid/content/res/Resources;
    const v4, 0x7f080005

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 30
    .local v3, text:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v2

    .line 31
    .local v2, styledText:Ljava/lang/CharSequence;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 17
    invoke-static {}, Lcom/ui/LapseIt/Main;->getFlurryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 38
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V

    .line 39
    return-void
.end method
