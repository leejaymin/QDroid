.class Lti/modules/titanium/ui/widget/TiUIImageView$2;
.super Ljava/lang/Object;
.source "TiUIImageView.java"

# interfaces
.implements Lorg/appcelerator/titanium/util/TiDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lti/modules/titanium/ui/widget/TiUIImageView;-><init>(Lorg/appcelerator/titanium/proxy/TiViewProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lti/modules/titanium/ui/widget/TiUIImageView;


# direct methods
.method constructor <init>(Lti/modules/titanium/ui/widget/TiUIImageView;)V
    .locals 0
    .parameter

    .prologue
    .line 129
    iput-object p1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadFinished(Ljava/net/URI;)V
    .locals 9
    .parameter "uri"

    .prologue
    .line 132
    invoke-static {p1}, Lorg/appcelerator/titanium/util/TiResponseCache;->peek(Ljava/net/URI;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    invoke-static {}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v8

    monitor-enter v8

    .line 137
    :try_start_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-static {}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$500()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    #setter for: Lti/modules/titanium/ui/widget/TiUIImageView;->token:I
    invoke-static {v1, v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$602(Lti/modules/titanium/ui/widget/TiUIImageView;I)I

    .line 138
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->imageSources:Ljava/util/ArrayList;
    invoke-static {v1}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$900(Lti/modules/titanium/ui/widget/TiUIImageView;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lorg/appcelerator/titanium/view/TiDrawableReference;

    move-object v7, v0

    new-instance v1, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;

    iget-object v2, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    iget-object v3, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    invoke-virtual {v3}, Lti/modules/titanium/ui/widget/TiUIImageView;->getProxy()Lorg/appcelerator/titanium/proxy/TiViewProxy;

    move-result-object v3

    invoke-virtual {v3}, Lorg/appcelerator/titanium/proxy/TiViewProxy;->getTiContext()Lorg/appcelerator/titanium/TiContext;

    move-result-object v3

    iget-object v4, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->requestedWidth:Lorg/appcelerator/titanium/TiDimension;
    invoke-static {v4}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$700(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v4

    iget-object v5, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->requestedHeight:Lorg/appcelerator/titanium/TiDimension;
    invoke-static {v5}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$800(Lti/modules/titanium/ui/widget/TiUIImageView;)Lorg/appcelerator/titanium/TiDimension;

    move-result-object v5

    iget-object v6, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    #getter for: Lti/modules/titanium/ui/widget/TiUIImageView;->token:I
    invoke-static {v6}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$600(Lti/modules/titanium/ui/widget/TiUIImageView;)I

    move-result v6

    invoke-direct/range {v1 .. v6}, Lti/modules/titanium/ui/widget/TiUIImageView$BgImageLoader;-><init>(Lti/modules/titanium/ui/widget/TiUIImageView;Lorg/appcelerator/titanium/TiContext;Lorg/appcelerator/titanium/TiDimension;Lorg/appcelerator/titanium/TiDimension;I)V

    invoke-virtual {v7, v1}, Lorg/appcelerator/titanium/view/TiDrawableReference;->getBitmapAsync(Lorg/appcelerator/titanium/util/TiBackgroundImageLoadTask;)V

    .line 139
    monitor-exit v8

    .line 143
    :goto_0
    return-void

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 141
    :cond_0
    iget-object v1, p0, Lti/modules/titanium/ui/widget/TiUIImageView$2;->this$0:Lti/modules/titanium/ui/widget/TiUIImageView;

    const/4 v2, 0x1

    #calls: Lti/modules/titanium/ui/widget/TiUIImageView;->setImage(Z)V
    invoke-static {v1, v2}, Lti/modules/titanium/ui/widget/TiUIImageView;->access$400(Lti/modules/titanium/ui/widget/TiUIImageView;Z)V

    goto :goto_0
.end method
