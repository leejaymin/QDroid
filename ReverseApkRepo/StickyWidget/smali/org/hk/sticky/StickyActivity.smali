.class public Lorg/hk/sticky/StickyActivity;
.super Landroid/app/Activity;
.source "StickyActivity.java"


# instance fields
.field private mAppWidgetId:I

.field private mRemoteViewService:Lorg/hk/service/RemoteViewService;

.field private mSticky:Lorg/hk/provider/Sticky;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput v0, p0, Lorg/hk/sticky/StickyActivity;->mAppWidgetId:I

    .line 20
    return-void
.end method

.method static synthetic access$0(Lorg/hk/sticky/StickyActivity;)Lorg/hk/bean/StickyBean;
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/hk/sticky/StickyActivity;->saveStickyData()Lorg/hk/bean/StickyBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lorg/hk/sticky/StickyActivity;)Lorg/hk/service/RemoteViewService;
    .locals 1
    .parameter

    .prologue
    .line 24
    iget-object v0, p0, Lorg/hk/sticky/StickyActivity;->mRemoteViewService:Lorg/hk/service/RemoteViewService;

    return-object v0
.end method

.method static synthetic access$2(Lorg/hk/sticky/StickyActivity;)I
    .locals 1
    .parameter

    .prologue
    .line 22
    iget v0, p0, Lorg/hk/sticky/StickyActivity;->mAppWidgetId:I

    return v0
.end method

.method private createSetButton()V
    .locals 2

    .prologue
    .line 77
    const v1, 0x7f070006

    invoke-virtual {p0, v1}, Lorg/hk/sticky/StickyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 78
    .local v0, setButton:Landroid/widget/Button;
    new-instance v1, Lorg/hk/sticky/StickyActivity$1;

    invoke-direct {v1, p0}, Lorg/hk/sticky/StickyActivity$1;-><init>(Lorg/hk/sticky/StickyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-void
.end method

.method private createSpinner(I)Landroid/widget/ArrayAdapter;
    .locals 2
    .parameter "arrayName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 70
    const v1, 0x1090008

    .line 69
    invoke-static {p0, p1, v1}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v0

    .line 72
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 73
    return-object v0
.end method

.method private saveStickyData()Lorg/hk/bean/StickyBean;
    .locals 8

    .prologue
    .line 98
    const v6, 0x7f070002

    invoke-virtual {p0, v6}, Lorg/hk/sticky/StickyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 99
    .local v1, contents:Landroid/widget/TextView;
    const v6, 0x7f070003

    invoke-virtual {p0, v6}, Lorg/hk/sticky/StickyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 100
    .local v0, colorSpinner:Landroid/widget/Spinner;
    const v6, 0x7f070005

    invoke-virtual {p0, v6}, Lorg/hk/sticky/StickyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 101
    .local v4, sizeSpinner:Landroid/widget/Spinner;
    const v6, 0x7f070004

    invoke-virtual {p0, v6}, Lorg/hk/sticky/StickyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Spinner;

    .line 103
    .local v5, textColorSpinner:Landroid/widget/Spinner;
    new-instance v3, Lorg/hk/bean/StickyBean;

    invoke-direct {v3}, Lorg/hk/bean/StickyBean;-><init>()V

    .line 104
    .local v3, sBean:Lorg/hk/bean/StickyBean;
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lorg/hk/bean/StickyBean;->content:Ljava/lang/String;

    .line 105
    iget v6, p0, Lorg/hk/sticky/StickyActivity;->mAppWidgetId:I

    iput v6, v3, Lorg/hk/bean/StickyBean;->widgetId:I

    .line 106
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v3, Lorg/hk/bean/StickyBean;->backGroundColor:I

    .line 107
    invoke-virtual {v5}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v3, Lorg/hk/bean/StickyBean;->textColor:I

    .line 108
    invoke-virtual {v4}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v6

    long-to-int v6, v6

    iput v6, v3, Lorg/hk/bean/StickyBean;->size:I

    .line 110
    new-instance v6, Lorg/hk/provider/Sticky;

    invoke-direct {v6, p0}, Lorg/hk/provider/Sticky;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6}, Lorg/hk/provider/Sticky;->open()Lorg/hk/provider/Sticky;

    move-result-object v6

    iput-object v6, p0, Lorg/hk/sticky/StickyActivity;->mSticky:Lorg/hk/provider/Sticky;

    .line 112
    :try_start_0
    iget-object v6, p0, Lorg/hk/sticky/StickyActivity;->mSticky:Lorg/hk/provider/Sticky;

    invoke-virtual {v6, v3}, Lorg/hk/provider/Sticky;->save(Lorg/hk/bean/StickyBean;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :goto_0
    iget-object v6, p0, Lorg/hk/sticky/StickyActivity;->mSticky:Lorg/hk/provider/Sticky;

    invoke-virtual {v6}, Lorg/hk/provider/Sticky;->close()V

    .line 118
    return-object v3

    .line 113
    :catch_0
    move-exception v6

    move-object v2, v6

    .line 114
    .local v2, e:Ljava/lang/Exception;
    iget-object v6, p0, Lorg/hk/sticky/StickyActivity;->mSticky:Lorg/hk/provider/Sticky;

    invoke-virtual {v6}, Lorg/hk/provider/Sticky;->alterDb()V

    .line 115
    iget-object v6, p0, Lorg/hk/sticky/StickyActivity;->mSticky:Lorg/hk/provider/Sticky;

    invoke-virtual {v6, v3}, Lorg/hk/provider/Sticky;->save(Lorg/hk/bean/StickyBean;)J

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "savedInstanceState"

    .prologue
    const/4 v11, 0x1

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v8, Lorg/hk/service/RemoteViewService;

    invoke-direct {v8, p0}, Lorg/hk/service/RemoteViewService;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lorg/hk/sticky/StickyActivity;->mRemoteViewService:Lorg/hk/service/RemoteViewService;

    .line 30
    const v8, 0x7f030021

    invoke-virtual {p0, v8}, Lorg/hk/sticky/StickyActivity;->setContentView(I)V

    .line 32
    invoke-virtual {p0}, Lorg/hk/sticky/StickyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 33
    .local v2, extras:Landroid/os/Bundle;
    if-eqz v2, :cond_0

    .line 34
    invoke-virtual {p0}, Lorg/hk/sticky/StickyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v8

    .line 35
    const-string v9, "appWidgetId"

    .line 36
    const/4 v10, 0x0

    .line 34
    invoke-virtual {v8, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, p0, Lorg/hk/sticky/StickyActivity;->mAppWidgetId:I

    .line 39
    :cond_0
    const v8, 0x7f070003

    invoke-virtual {p0, v8}, Lorg/hk/sticky/StickyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 41
    .local v0, colorSpinner:Landroid/widget/Spinner;
    const/high16 v8, 0x7f06

    invoke-direct {p0, v8}, Lorg/hk/sticky/StickyActivity;->createSpinner(I)Landroid/widget/ArrayAdapter;

    move-result-object v8

    .line 40
    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 42
    const v8, 0x7f070004

    invoke-virtual {p0, v8}, Lorg/hk/sticky/StickyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 44
    .local v6, textColorSpinner:Landroid/widget/Spinner;
    const v8, 0x7f060001

    invoke-direct {p0, v8}, Lorg/hk/sticky/StickyActivity;->createSpinner(I)Landroid/widget/ArrayAdapter;

    move-result-object v8

    .line 43
    invoke-virtual {v6, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 45
    const v8, 0x7f070005

    invoke-virtual {p0, v8}, Lorg/hk/sticky/StickyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 46
    .local v4, sizeSpinner:Landroid/widget/Spinner;
    const v8, 0x7f060002

    invoke-direct {p0, v8}, Lorg/hk/sticky/StickyActivity;->createSpinner(I)Landroid/widget/ArrayAdapter;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 47
    invoke-direct {p0}, Lorg/hk/sticky/StickyActivity;->createSetButton()V

    .line 49
    invoke-virtual {p0}, Lorg/hk/sticky/StickyActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    .line 52
    .local v7, uri:Landroid/net/Uri;
    if-eqz v7, :cond_1

    .line 53
    invoke-static {v7}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v8

    long-to-int v3, v8

    .line 54
    .local v3, id:I
    new-instance v8, Lorg/hk/provider/Sticky;

    invoke-direct {v8, p0}, Lorg/hk/provider/Sticky;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8}, Lorg/hk/provider/Sticky;->open()Lorg/hk/provider/Sticky;

    move-result-object v8

    iput-object v8, p0, Lorg/hk/sticky/StickyActivity;->mSticky:Lorg/hk/provider/Sticky;

    .line 55
    iget-object v8, p0, Lorg/hk/sticky/StickyActivity;->mSticky:Lorg/hk/provider/Sticky;

    invoke-virtual {v8, v3}, Lorg/hk/provider/Sticky;->findByWidgetId(I)Lorg/hk/bean/StickyBean;

    move-result-object v5

    .line 56
    .local v5, stBean:Lorg/hk/bean/StickyBean;
    iget-object v8, p0, Lorg/hk/sticky/StickyActivity;->mSticky:Lorg/hk/provider/Sticky;

    invoke-virtual {v8}, Lorg/hk/provider/Sticky;->close()V

    .line 57
    const v8, 0x7f070002

    invoke-virtual {p0, v8}, Lorg/hk/sticky/StickyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 58
    .local v1, contents:Landroid/widget/TextView;
    iget-object v8, v5, Lorg/hk/bean/StickyBean;->content:Ljava/lang/String;

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget v8, v5, Lorg/hk/bean/StickyBean;->backGroundColor:I

    invoke-virtual {v0, v8, v11}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 60
    iget v8, v5, Lorg/hk/bean/StickyBean;->textColor:I

    invoke-virtual {v6, v8, v11}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 61
    iget v8, v5, Lorg/hk/bean/StickyBean;->size:I

    invoke-virtual {v4, v8, v11}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 62
    iget v8, p0, Lorg/hk/sticky/StickyActivity;->mAppWidgetId:I

    if-nez v8, :cond_1

    .line 63
    iget v8, v5, Lorg/hk/bean/StickyBean;->widgetId:I

    iput v8, p0, Lorg/hk/sticky/StickyActivity;->mAppWidgetId:I

    .line 66
    .end local v1           #contents:Landroid/widget/TextView;
    .end local v3           #id:I
    .end local v5           #stBean:Lorg/hk/bean/StickyBean;
    :cond_1
    return-void
.end method
