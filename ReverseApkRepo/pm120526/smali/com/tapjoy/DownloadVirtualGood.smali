.class public Lcom/tapjoy/DownloadVirtualGood;
.super Landroid/app/Activity;


# instance fields
.field a:Landroid/view/View$OnClickListener;

.field b:Landroid/view/View$OnClickListener;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/Button;

.field private e:Landroid/widget/TextView;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->f:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->g:Ljava/lang/String;

    new-instance v0, Lcom/tapjoy/a;

    invoke-direct {v0, p0}, Lcom/tapjoy/a;-><init>(Lcom/tapjoy/DownloadVirtualGood;)V

    iput-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->a:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/tapjoy/b;

    invoke-direct {v0, p0}, Lcom/tapjoy/b;-><init>(Lcom/tapjoy/DownloadVirtualGood;)V

    iput-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->b:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/DownloadVirtualGood;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tapjoy/DownloadVirtualGood;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->g:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "URL_PARAMS"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "URL_PARAMS"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->f:Ljava/lang/String;

    :cond_0
    const-string v0, "DOWNLOAD VIRTUAL GOODS"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clientPackage: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tapjoy/TJCVirtualGoods;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tapjoy/bj;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "tapjoy_virtualgoods_reconnectvirtualgoods"

    const-string v3, "layout"

    iget-object v4, p0, Lcom/tapjoy/DownloadVirtualGood;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/DownloadVirtualGood;->setContentView(I)V

    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "DownloadBtn"

    const-string v3, "id"

    iget-object v4, p0, Lcom/tapjoy/DownloadVirtualGood;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/DownloadVirtualGood;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->c:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "CancelBtn"

    const-string v3, "id"

    iget-object v4, p0, Lcom/tapjoy/DownloadVirtualGood;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/DownloadVirtualGood;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->d:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "VGAcquiredMsgText"

    const-string v3, "id"

    iget-object v4, p0, Lcom/tapjoy/DownloadVirtualGood;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/DownloadVirtualGood;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->e:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/tapjoy/DownloadVirtualGood;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "notify_checkbox"

    const-string v3, "id"

    iget-object v4, p0, Lcom/tapjoy/DownloadVirtualGood;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tapjoy/DownloadVirtualGood;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->h:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->c:Landroid/widget/Button;

    iget-object v2, p0, Lcom/tapjoy/DownloadVirtualGood;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->d:Landroid/widget/Button;

    iget-object v2, p0, Lcom/tapjoy/DownloadVirtualGood;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->e:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "You have successfully acquired item \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "NAME"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. Would you like to download it now?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/tapjoy/DownloadVirtualGood;->h:Landroid/widget/CheckBox;

    new-instance v1, Lcom/tapjoy/c;

    invoke-direct {v1, p0}, Lcom/tapjoy/c;-><init>(Lcom/tapjoy/DownloadVirtualGood;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
