.class public Lorg/chemlab/dealdroidapp/ItemViewer;
.super Landroid/app/Activity;
.source "ItemViewer.java"


# instance fields
.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const/high16 v3, 0x7f03

    invoke-virtual {p0, v3}, Lorg/chemlab/dealdroidapp/ItemViewer;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lorg/chemlab/dealdroidapp/ItemViewer;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "site"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/chemlab/dealdroidapp/Site;->valueOf(Ljava/lang/String;)Lorg/chemlab/dealdroidapp/Site;

    move-result-object v1

    .line 32
    .local v1, site:Lorg/chemlab/dealdroidapp/Site;
    const/high16 v3, 0x7f05

    invoke-virtual {p0, v3}, Lorg/chemlab/dealdroidapp/ItemViewer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/webkit/WebView;

    iput-object v3, p0, Lorg/chemlab/dealdroidapp/ItemViewer;->webview:Landroid/webkit/WebView;

    .line 36
    invoke-static {p0, v1}, Lorg/chemlab/dealdroidapp/Utils;->hasSiteAsset(Landroid/content/Context;Lorg/chemlab/dealdroidapp/Site;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/ItemViewer;->webview:Landroid/webkit/WebView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "content://org.chemlab.dealdroidapp/"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Site;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 40
    :cond_0
    new-instance v0, Lorg/chemlab/dealdroidapp/Database;

    invoke-direct {v0, p0}, Lorg/chemlab/dealdroidapp/Database;-><init>(Landroid/content/Context;)V

    .line 42
    .local v0, db:Lorg/chemlab/dealdroidapp/Database;
    :try_start_0
    invoke-virtual {v0}, Lorg/chemlab/dealdroidapp/Database;->open()V

    .line 43
    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Site;->isForceUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lorg/chemlab/dealdroidapp/Site;->getSite()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 44
    .local v2, uri:Landroid/net/Uri;
    :goto_1
    iget-object v3, p0, Lorg/chemlab/dealdroidapp/ItemViewer;->webview:Landroid/webkit/WebView;

    invoke-virtual {v1, v2}, Lorg/chemlab/dealdroidapp/Site;->applyAffiliation(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    invoke-virtual {v0}, Lorg/chemlab/dealdroidapp/Database;->close()V

    goto :goto_0

    .line 43
    .end local v2           #uri:Landroid/net/Uri;
    :cond_1
    :try_start_1
    invoke-virtual {v0, v1}, Lorg/chemlab/dealdroidapp/Database;->getCurrentItem(Lorg/chemlab/dealdroidapp/Site;)Lorg/chemlab/dealdroidapp/Item;

    move-result-object v3

    invoke-virtual {v3}, Lorg/chemlab/dealdroidapp/Item;->getLink()Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    goto :goto_1

    .line 45
    :catchall_0
    move-exception v3

    .line 46
    invoke-virtual {v0}, Lorg/chemlab/dealdroidapp/Database;->close()V

    .line 47
    throw v3
.end method
