.class Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;
.super Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;
.source "TiUIImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BgImageLoader"
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

.field private token:I


# direct methods
.method public constructor <init>(Lti/modules/titanium/ui/widget/TiUIImageView;Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;I)V
    .locals 1
    .parameter
    .parameter "tiContext"
    .parameter "imageWidth"
    .parameter "imageHeight"
    .parameter "token"

    .prologue
    .line 85
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    .line 86
    invoke-virtual {p1}, Lti/modules/titanium/ui/widget/TiUIImageView;->getParentView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p2, v0, p3, p4}, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;-><init>(Lorg/appcelerator/titanium/TiContext;Landroid/view/View;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;)V

    .line 87
    iput p5, p0, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;->token:I

    .line 88
    return-void
.end method


# virtual methods
.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "d"

    .prologue
    const-string v4, "image"

    .line 92
    invoke-super {p0, p1}, Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;->onPostExecute(Ljava/lang/Object;)V

    .line 94
    if-eqz p1, :cond_1

    .line 95
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    iget v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;->token:I

    #calls: Lti/modules/titanium/ui/widget/TiUIImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;I)V
    invoke-static {v2, p1, v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$000(Lti/modules/titanium/ui/widget/TiUIImageView;Landroid/graphics/drawable/Drawable;I)V

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-static {}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$100()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const-string v1, "Background image load returned null"

    .line 99
    .local v1, traceMsg:Ljava/lang/String;
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$200(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->hasProperty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->proxy:Lorg/appcelerator/titanium/proxy/TiViewProxy;
    invoke-static {v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$300(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v2

    const-string v3, "image"

    invoke-virtual {v2, v4}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, image:Ljava/lang/Object;
    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 102
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lorg/appcelerator/titanium/util/TiConvert;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .end local v0           #image:Ljava/lang/Object;
    :cond_2
    const-string v2, "TiUIImageView"

    invoke-static {v2, v1}, Lorg/appcelerator/titanium/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 81
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .end local p1
    invoke-virtual {p0, p1}, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
