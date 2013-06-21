.class public Lcom/rubycell/adcenter/RubycellAdCenterActivity;
.super Landroid/app/Activity;

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/rubycell/adcenter/a/c;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/CheckBox;

.field private e:Landroid/widget/CheckBox;

.field private f:Landroid/widget/Button;

.field private g:Landroid/widget/Button;

.field private h:Lcom/rubycell/adcenter/a/b;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->d:Landroid/widget/CheckBox;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/rubycell/adcenter/ShowInfomationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "admob"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "adcenter"

    const-string v2, "admob"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v1, "moblicx"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "adcenter"

    const-string v2, "moblicx"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "adcenter"

    const-string v2, "noad"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method static synthetic b(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Lcom/rubycell/adcenter/a/b;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->h:Lcom/rubycell/adcenter/a/b;

    return-object v0
.end method

.method static synthetic c(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->j:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->i:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->e:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic f(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->k:Z

    return v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "selectedAd"

    const-string v1, "admob"

    invoke-static {p0, v0, v1}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "selectedAd"

    const-string v1, "moblicx"

    invoke-static {p0, v0, v1}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "admob"

    invoke-direct {p0, v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "moblicx"

    invoke-direct {p0, v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "noad"

    invoke-direct {p0, v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v5, 0x1

    const v4, 0x7f060001

    const/high16 v3, 0x7f06

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Window;->requestFeature(I)Z

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->setContentView(I)V

    const v0, 0x7f0a0002

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a0008

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a000d

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->b:Landroid/widget/ImageView;

    const v0, 0x7f0a0004

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->i:Landroid/widget/TextView;

    const v0, 0x7f0a000a

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->j:Landroid/widget/TextView;

    const v0, 0x7f0a0006

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->d:Landroid/widget/CheckBox;

    const v0, 0x7f0a000b

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->e:Landroid/widget/CheckBox;

    const v0, 0x7f0a000e

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->f:Landroid/widget/Button;

    const v0, 0x7f0a0010

    invoke-virtual {p0, v0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->g:Landroid/widget/Button;

    new-instance v0, Lcom/rubycell/adcenter/a/b;

    invoke-direct {v0, p0}, Lcom/rubycell/adcenter/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->h:Lcom/rubycell/adcenter/a/b;

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->h:Lcom/rubycell/adcenter/a/b;

    iget-object v1, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lcom/rubycell/adcenter/a/b;->a(Landroid/widget/CheckBox;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->h:Lcom/rubycell/adcenter/a/b;

    iget-object v1, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lcom/rubycell/adcenter/a/b;->a(Landroid/widget/CheckBox;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->h:Lcom/rubycell/adcenter/a/b;

    invoke-virtual {v0, p0}, Lcom/rubycell/adcenter/a/b;->a(Lcom/rubycell/adcenter/a/c;)V

    invoke-virtual {p0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_app_in_amazon"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->k:Z

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->d:Landroid/widget/CheckBox;

    new-instance v1, Lcom/rubycell/adcenter/b;

    invoke-direct {v1, p0}, Lcom/rubycell/adcenter/b;-><init>(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->e:Landroid/widget/CheckBox;

    new-instance v1, Lcom/rubycell/adcenter/c;

    invoke-direct {v1, p0}, Lcom/rubycell/adcenter/c;-><init>(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->g:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/adcenter/d;

    invoke-direct {v1, p0}, Lcom/rubycell/adcenter/d;-><init>(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->f:Landroid/widget/Button;

    new-instance v1, Lcom/rubycell/adcenter/e;

    invoke-direct {v1, p0}, Lcom/rubycell/adcenter/e;-><init>(Lcom/rubycell/adcenter/RubycellAdCenterActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p0}, Lcom/rubycell/adcenter/a/a;->h(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->h:Lcom/rubycell/adcenter/a/b;

    iget-object v1, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lcom/rubycell/adcenter/a/b;->b(Landroid/widget/CheckBox;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->j:Landroid/widget/TextView;

    const-string v1, "Inactive"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->i:Landroid/widget/TextView;

    const-string v1, "Active"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const-string v0, "selectedAd"

    const-string v1, "admob"

    invoke-static {p0, v0, v1}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne v0, v5, :cond_2

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->h:Lcom/rubycell/adcenter/a/b;

    iget-object v1, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lcom/rubycell/adcenter/a/b;->b(Landroid/widget/CheckBox;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->i:Landroid/widget/TextView;

    const-string v1, "Inactive"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->j:Landroid/widget/TextView;

    const-string v1, "Active"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    const-string v0, "selectedAd"

    const-string v1, "moblicx"

    invoke-static {p0, v0, v1}, Lcom/rubycell/adcenter/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, "selectedAd"

    const-string v1, "admob"

    invoke-static {p0, v0, v1}, Lcom/rubycell/adcenter/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "admob"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->h:Lcom/rubycell/adcenter/a/b;

    iget-object v1, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->d:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lcom/rubycell/adcenter/a/b;->b(Landroid/widget/CheckBox;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->j:Landroid/widget/TextView;

    const-string v1, "Inactive"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->i:Landroid/widget/TextView;

    const-string v1, "Active"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_3
    const-string v1, "moblicx"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->h:Lcom/rubycell/adcenter/a/b;

    iget-object v1, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->e:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Lcom/rubycell/adcenter/a/b;->b(Landroid/widget/CheckBox;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->i:Landroid/widget/TextView;

    const-string v1, "Inactive"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->i:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->j:Landroid/widget/TextView;

    const-string v1, "Active"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->h:Lcom/rubycell/adcenter/a/b;

    invoke-virtual {v0}, Lcom/rubycell/adcenter/a/b;->b()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/rubycell/adcenter/RubycellAdCenterActivity;->h:Lcom/rubycell/adcenter/a/b;

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
