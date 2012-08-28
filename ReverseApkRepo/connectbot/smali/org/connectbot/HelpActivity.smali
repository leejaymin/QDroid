.class public Lorg/connectbot/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const v7, 0x7f030003

    invoke-virtual {p0, v7}, Lorg/connectbot/HelpActivity;->setContentView(I)V

    .line 47
    const-string v7, "%s: %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    .line 48
    invoke-virtual {p0}, Lorg/connectbot/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const/high16 v10, 0x7f08

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v8, v6

    const/4 v9, 0x1

    .line 49
    invoke-virtual {p0}, Lorg/connectbot/HelpActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080009

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v8, v9

    .line 47
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/connectbot/HelpActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 51
    invoke-virtual {p0}, Lorg/connectbot/HelpActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 52
    .local v0, am:Landroid/content/res/AssetManager;
    const v7, 0x7f0b001b

    invoke-virtual {p0, v7}, Lorg/connectbot/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 55
    .local v2, content:Landroid/widget/LinearLayout;
    :try_start_0
    const-string v7, "help"

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    :goto_0
    if-lt v6, v8, :cond_0

    .line 76
    :goto_1
    return-void

    .line 55
    :cond_0
    aget-object v4, v7, v6

    .line 56
    .local v4, name:Ljava/lang/String;
    const-string v9, ".html"

    invoke-virtual {v4, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 57
    new-instance v1, Landroid/widget/Button;

    invoke-direct {v1, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 58
    .local v1, button:Landroid/widget/Button;
    const/4 v9, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v10

    const-string v11, ".html"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v4, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 59
    .local v5, topic:Ljava/lang/String;
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 61
    new-instance v9, Lorg/connectbot/HelpActivity$1;

    invoke-direct {v9, p0, v5}, Lorg/connectbot/HelpActivity$1;-><init>(Lorg/connectbot/HelpActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .end local v1           #button:Landroid/widget/Button;
    .end local v5           #topic:Ljava/lang/String;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 72
    .end local v4           #name:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 74
    .local v3, e:Ljava/io/IOException;
    const-string v6, "ConnectBot.HelpActivity"

    const-string v7, "couldn\'t get list of help assets"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
