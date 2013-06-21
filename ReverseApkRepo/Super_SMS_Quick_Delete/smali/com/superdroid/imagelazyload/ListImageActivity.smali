.class public Lcom/superdroid/imagelazyload/ListImageActivity;
.super Landroid/app/ListActivity;
.source "ListImageActivity.java"

# interfaces
.implements Lcom/superdroid/imagelazyload/ImageReceivedCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloading(Landroid/widget/ImageView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    return-void
.end method

.method public onImageReceived(Lcom/superdroid/imagelazyload/ImageDisplayer;)V
    .locals 0
    .parameter "displayer"

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/superdroid/imagelazyload/ListImageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 12
    return-void
.end method
