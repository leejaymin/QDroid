.class public Lcom/mosaicture/view/HelpActivity;
.super Lcom/mosaicture/view/StandardLeakSafeActivity;

# interfaces
.implements Lcom/mosaicture/view/m;


# static fields
.field private static a:Lcom/markupartist/android/widget/ActionBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/mosaicture/view/StandardLeakSafeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()[Lcom/markupartist/android/widget/b;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/markupartist/android/widget/b;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/mosaicture/view/StandardLeakSafeActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/HelpActivity;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/mosaicture/view/HelpActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/HelpActivity;->setContentView(I)V

    const v0, 0x7f0a0019

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/markupartist/android/widget/ActionBar;

    sput-object v0, Lcom/mosaicture/view/HelpActivity;->a:Lcom/markupartist/android/widget/ActionBar;

    new-instance v1, Lcom/mosaicture/view/l;

    invoke-direct {v1, p0}, Lcom/mosaicture/view/l;-><init>(Lcom/mosaicture/view/HelpActivity;)V

    invoke-virtual {v0, v1}, Lcom/markupartist/android/widget/ActionBar;->a(Lcom/markupartist/android/widget/b;)V

    sget-object v0, Lcom/mosaicture/view/HelpActivity;->a:Lcom/markupartist/android/widget/ActionBar;

    invoke-virtual {v0}, Lcom/markupartist/android/widget/ActionBar;->a()V

    sget-object v0, Lcom/mosaicture/view/HelpActivity;->a:Lcom/markupartist/android/widget/ActionBar;

    invoke-virtual {v0}, Lcom/markupartist/android/widget/ActionBar;->c()V

    sget-object v0, Lcom/mosaicture/view/HelpActivity;->a:Lcom/markupartist/android/widget/ActionBar;

    new-instance v1, Lcom/mosaicture/view/k;

    invoke-direct {v1, p0}, Lcom/mosaicture/view/k;-><init>(Lcom/mosaicture/view/HelpActivity;)V

    invoke-virtual {v0, v1}, Lcom/markupartist/android/widget/ActionBar;->b(Lcom/markupartist/android/widget/b;)V

    const v0, 0x7f0a001a

    invoke-virtual {p0, v0}, Lcom/mosaicture/view/HelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file:///android_asset/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const v2, 0x7f070036

    invoke-virtual {p0, v2}, Lcom/mosaicture/view/HelpActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".html"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
