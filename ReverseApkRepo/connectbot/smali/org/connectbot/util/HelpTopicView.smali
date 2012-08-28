.class public Lorg/connectbot/util/HelpTopicView;
.super Landroid/webkit/WebView;
.source "HelpTopicView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Lorg/connectbot/util/HelpTopicView;->initialize()V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 38
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0}, Lorg/connectbot/util/HelpTopicView;->initialize()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0}, Lorg/connectbot/util/HelpTopicView;->initialize()V

    .line 35
    return-void
.end method

.method private initialize()V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lorg/connectbot/util/HelpTopicView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 49
    .local v0, wSet:Landroid/webkit/WebSettings;
    sget-object v1, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 50
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 51
    return-void
.end method


# virtual methods
.method public setTopic(Ljava/lang/String;)Lorg/connectbot/util/HelpTopicView;
    .locals 5
    .parameter "topic"

    .prologue
    .line 54
    const-string v1, "file:///android_asset/%s/%s%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 55
    const-string v4, "help"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    const-string v4, ".html"

    aput-object v4, v2, v3

    .line 54
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, path:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lorg/connectbot/util/HelpTopicView;->loadUrl(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lorg/connectbot/util/HelpTopicView;->computeScroll()V

    .line 60
    return-object p0
.end method
