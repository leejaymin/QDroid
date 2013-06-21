.class public Lcom/rubycell/adcenter/ShowInfomationActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/rubycell/adcenter/ShowInfomationActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/ShowInfomationActivity;->setContentView(I)V

    const v0, 0x7f0a004d

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/ShowInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubycell/adcenter/ShowInfomationActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f0a004e

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/ShowInfomationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/adcenter/ShowInfomationActivity;->b:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/rubycell/adcenter/ShowInfomationActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "adcenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "admob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/rubycell/adcenter/ShowInfomationActivity;->a:Landroid/widget/TextView;

    const/high16 v1, 0x7f07

    invoke-virtual {p0, v1}, Lcom/rubycell/adcenter/ShowInfomationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/rubycell/adcenter/ShowInfomationActivity;->b:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/adcenter/f;

    invoke-direct {v1, p0}, Lcom/rubycell/adcenter/f;-><init>(Lcom/rubycell/adcenter/ShowInfomationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const-string v1, "airpush"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/rubycell/adcenter/ShowInfomationActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f070001

    invoke-virtual {p0, v1}, Lcom/rubycell/adcenter/ShowInfomationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    const-string v1, "moblicx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/rubycell/adcenter/ShowInfomationActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f070003

    invoke-virtual {p0, v1}, Lcom/rubycell/adcenter/ShowInfomationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/rubycell/adcenter/ShowInfomationActivity;->a:Landroid/widget/TextView;

    const v1, 0x7f070002

    invoke-virtual {p0, v1}, Lcom/rubycell/adcenter/ShowInfomationActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/rubycell/adcenter/ShowInfomationActivity;->finish()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
