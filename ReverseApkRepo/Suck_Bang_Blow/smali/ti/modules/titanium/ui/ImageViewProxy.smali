.class public Lti/modules/titanium/ui/ImageViewProxy;
.super Lti/modules/titanium/ui/ViewProxy;
.source "ImageViewProxy.java"


# static fields
.field private static final PROPERTY_INTERNAL_BITMAP:Ljava/lang/String; = "_internalBitmap"

.field private static final PROPERTY_INTERNAL_SOURCES:Ljava/lang/String; = "_internalSources"


# direct methods
.method public constructor <init>(Lorg/appcelerator/titanium/TiContext;)V
    .locals 0
    .parameter "tiContext"

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lti/modules/titanium/ui/ViewProxy;-><init>(Lorg/appcelerator/titanium/TiContext;)V

    .line 31
    return-void
.end method

.method private getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;
    .locals 1

    .prologue
    .line 79
    invoke-virtual {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v0

    invoke-virtual {v0}, Lorg/appcelerator/titanium/TiContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/ImageViewProxy;->getView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;

    move-result-object p0

    .end local p0
    check-cast p0, Lti/modules/titanium/ui/widget/TiUIImageView;

    return-object p0
.end method


# virtual methods
.method public createView(Landroid/app/Activity;)Lorg/appcelerator/titanium/view/TiUIView;
    .locals 1
    .parameter "activity"

    .prologue
    .line 35
    new-instance v0, Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {v0, p0}, Lti/modules/titanium/ui/widget/TiUIImageView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V

    return-object v0
.end method

.method public getAnimating()Z
    .locals 1

    .prologue
    .line 104
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const-string v3, "_internalBitmap"

    .line 40
    const-string v1, "_internalBitmap"

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/ImageViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 41
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    iget-object v1, p0, Lti/modules/titanium/ui/ImageViewProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v2, "_internalBitmap"

    invoke-virtual {v1, v3}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const/4 v1, 0x0

    .line 47
    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getImageSources()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiDrawableReference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    const-string v0, "_internalSources"

    invoke-virtual {p0, v0}, Lti/modules/titanium/ui/ImageViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/ArrayList;

    return-object p0
.end method

.method public getReverse()Z
    .locals 1

    .prologue
    .line 109
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->isReverse()Z

    move-result v0

    return v0
.end method

.method public inTableView()Z
    .locals 2

    .prologue
    .line 68
    invoke-virtual {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    .line 69
    .local v0, parent:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    :goto_0
    if-eqz v0, :cond_1

    .line 70
    instance-of v1, v0, Lti/modules/titanium/ui/TableViewProxy;

    if-eqz v1, :cond_0

    .line 71
    const/4 v1, 0x1

    .line 75
    :goto_1
    return v1

    .line 73
    :cond_0
    invoke-virtual {v0}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getParent()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v0

    goto :goto_0

    .line 75
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onBitmapChanged(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "imageView"
    .parameter "bitmap"

    .prologue
    .line 63
    const-string v0, "_internalBitmap"

    invoke-virtual {p0, v0, p2}, Lti/modules/titanium/ui/ImageViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    return-void
.end method

.method public onImageSourcesChanged(Lti/modules/titanium/ui/widget/TiUIImageView;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "imageView"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lti/modules/titanium/ui/widget/TiUIImageView;",
            "Ljava/util/ArrayList",
            "<",
            "Lorg/appcelerator/titanium/view/TiDrawableReference;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 58
    .local p2, imageSources:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lorg/appcelerator/titanium/view/TiDrawableReference;>;"
    const-string v0, "_internalSources"

    invoke-virtual {p0, v0, p2}, Lti/modules/titanium/ui/ImageViewProxy;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 94
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->pause()V

    .line 95
    return-void
.end method

.method public releaseViews()V
    .locals 4

    .prologue
    const-string v3, "_internalSources"

    const-string v2, "_internalBitmap"

    .line 125
    const-string v0, "_internalBitmap"

    invoke-virtual {p0, v2}, Lti/modules/titanium/ui/ImageViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lti/modules/titanium/ui/ImageViewProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "_internalBitmap"

    invoke-virtual {v0, v2}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    :cond_0
    const-string v0, "_internalSources"

    invoke-virtual {p0, v3}, Lti/modules/titanium/ui/ImageViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lti/modules/titanium/ui/ImageViewProxy;->properties:Lorg/appcelerator/kroll/KrollDict;

    const-string v1, "_internalSources"

    invoke-virtual {v0, v3}, Lorg/appcelerator/kroll/KrollDict;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_1
    invoke-super {p0}, Lti/modules/titanium/ui/ViewProxy;->releaseViews()V

    .line 132
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->resume()V

    .line 100
    return-void
.end method

.method public setReverse(Z)V
    .locals 1
    .parameter "reverse"

    .prologue
    .line 114
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->setReverse(Z)V

    .line 115
    return-void
.end method

.method public start()V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->start()V

    .line 85
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 89
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->stop()V

    .line 90
    return-void
.end method

.method public toBlob()Lorg/appcelerator/titanium/TiBlob;
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lti/modules/titanium/ui/ImageViewProxy;->getImageView()Lti/modules/titanium/ui/widget/TiUIImageView;

    move-result-object v0

    invoke-virtual {v0}, Lti/modules/titanium/ui/widget/TiUIImageView;->toBlob()Lorg/appcelerator/titanium/TiBlob;

    move-result-object v0

    return-object v0
.end method
