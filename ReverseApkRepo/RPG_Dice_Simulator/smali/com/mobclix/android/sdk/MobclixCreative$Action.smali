.class Lcom/mobclix/android/sdk/MobclixCreative$Action;
.super Ljava/lang/Object;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Action"
.end annotation


# instance fields
.field private autoplay:Z

.field cachedHTML:Ljava/lang/String;

.field cachedImageBitmap:Landroid/graphics/Bitmap;

.field cachedImageHeight:I

.field cachedImageWidth:I

.field imageUrl:Ljava/lang/String;

.field modal:Z

.field private mx:F

.field private my:F

.field overlay:Landroid/app/Dialog;

.field private parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

.field position:Ljava/lang/String;

.field private rawJSON:Lorg/json/JSONObject;

.field private scrolledX:F

.field private scrolledY:F

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;

.field private trackingUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 6
    .parameter
    .parameter "action"
    .parameter "creative"

    .prologue
    const-string v3, "url"

    const-string v3, "autoplay"

    const-string v4, ""

    .line 841
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    const-string v3, ""

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    .line 781
    const-string v3, ""

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    .line 782
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->autoplay:Z

    .line 785
    const-string v3, "center"

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->position:Ljava/lang/String;

    .line 786
    const-string v3, ""

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->imageUrl:Ljava/lang/String;

    .line 787
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->modal:Z

    .line 792
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageBitmap:Landroid/graphics/Bitmap;

    .line 794
    const-string v3, ""

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedHTML:Ljava/lang/String;

    .line 796
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->trackingUrls:Ljava/util/ArrayList;

    .line 802
    :try_start_0
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->rawJSON:Lorg/json/JSONObject;

    .line 803
    iput-object p3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 804
    const-string v3, "type"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    .line 805
    const-string v3, "autoplay"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 806
    const-string v3, "autoplay"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->autoplay:Z

    .line 807
    :cond_0
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    const-string v4, "url"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 808
    const-string v3, "url"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :try_start_1
    const-string v3, "preload"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 811
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->loadPreload()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 838
    :cond_1
    :goto_0
    return-void

    .line 813
    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    const-string v4, "overlay"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 814
    const-string v3, "imageUrl"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->imageUrl:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 815
    :try_start_3
    const-string v3, "position"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->position:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 816
    :goto_1
    :try_start_4
    const-string v3, "modal"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->modal:Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2

    .line 817
    :goto_2
    :try_start_5
    const-string v3, "destinationUrl"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    .line 819
    :try_start_6
    const-string v3, "trackingUrls"

    invoke-virtual {p2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 820
    .local v2, tUrls:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_3
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    move-result v3

    if-lt v1, v3, :cond_3

    .line 824
    .end local v1           #i:I
    .end local v2           #tUrls:Lorg/json/JSONArray;
    :goto_4
    :try_start_7
    new-instance v0, Ljava/lang/Thread;

    new-instance v3, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->imageUrl:Ljava/lang/String;

    new-instance v5, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;

    invoke-direct {v5, p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$Action;)V

    invoke-direct {v3, v4, v5}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 836
    .local v0, cacheThread:Ljava/lang/Thread;
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;
    invoke-static {v3}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    .line 838
    .end local v0           #cacheThread:Ljava/lang/Thread;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 821
    .restart local v1       #i:I
    .restart local v2       #tUrls:Lorg/json/JSONArray;
    :cond_3
    :try_start_8
    iget-object v3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->trackingUrls:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    .line 820
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 823
    .end local v1           #i:I
    .end local v2           #tUrls:Lorg/json/JSONArray;
    :catch_1
    move-exception v3

    goto :goto_4

    .line 816
    :catch_2
    move-exception v3

    goto :goto_2

    .line 815
    :catch_3
    move-exception v3

    goto :goto_1

    .line 812
    :catch_4
    move-exception v3

    goto :goto_0
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixCreative$Action;)Lcom/mobclix/android/sdk/MobclixCreative;
    .locals 1
    .parameter

    .prologue
    .line 798
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 789
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->mx:F

    return-void
.end method

.method static synthetic access$10(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 791
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledY:F

    return-void
.end method

.method static synthetic access$11(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F
    .locals 1
    .parameter

    .prologue
    .line 790
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->startX:F

    return v0
.end method

.method static synthetic access$12(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F
    .locals 1
    .parameter

    .prologue
    .line 790
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->startY:F

    return v0
.end method

.method static synthetic access$13(Lcom/mobclix/android/sdk/MobclixCreative$Action;)Lcom/mobclix/android/sdk/MobclixCreative;
    .locals 1
    .parameter

    .prologue
    .line 779
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 790
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->startX:F

    return-void
.end method

.method static synthetic access$3(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 789
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->my:F

    return-void
.end method

.method static synthetic access$4(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 790
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->startY:F

    return-void
.end method

.method static synthetic access$5(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F
    .locals 1
    .parameter

    .prologue
    .line 789
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->mx:F

    return v0
.end method

.method static synthetic access$6(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F
    .locals 1
    .parameter

    .prologue
    .line 789
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->my:F

    return v0
.end method

.method static synthetic access$7(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F
    .locals 1
    .parameter

    .prologue
    .line 791
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledX:F

    return v0
.end method

.method static synthetic access$8(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 791
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledX:F

    return-void
.end method

.method static synthetic access$9(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F
    .locals 1
    .parameter

    .prologue
    .line 791
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledY:F

    return v0
.end method


# virtual methods
.method public act()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const-string v6, "video"

    .line 861
    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixCreative;->access$9(Z)V

    .line 862
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    const-string v3, "url"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 863
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->loadUrl()V

    .line 864
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/mobclix/android/sdk/MobclixCreative;->access$9(Z)V

    .line 875
    :cond_0
    :goto_0
    return v5

    .line 865
    :cond_1
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    const-string v3, "video"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 866
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 867
    .local v0, mIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v2, v2, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 868
    .local v1, packageName:Ljava/lang/String;
    const-class v2, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 869
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "video"

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 870
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ".data"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->rawJSON:Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 871
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 872
    .end local v0           #mIntent:Landroid/content/Intent;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    const-string v3, "overlay"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 873
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay()V

    goto :goto_0
.end method

.method public getAutoplay()Z
    .locals 1

    .prologue
    .line 842
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->autoplay:Z

    return v0
.end method

.method loadPreload()V
    .locals 4

    .prologue
    .line 845
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$Action$2;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action$2;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$Action;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 856
    .local v0, preloadHTML:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    return-void
.end method

.method loadUrl()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    .line 879
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 884
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    const-string v7, "mobclix://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, tmp:[Ljava/lang/String;
    array-length v6, v4

    if-gt v6, v8, :cond_0

    .line 885
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    const-string v7, "mobclix%3A%2F%2F"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    if-le v6, v8, :cond_2

    .line 887
    :cond_0
    aget-object v0, v4, v8

    .line 889
    .local v0, customAdString:Ljava/lang/String;
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;

    iget-object v9, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v10, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    #setter for: Lcom/mobclix/android/sdk/MobclixCreative;->customAdThread:Ljava/lang/Thread;
    invoke-static {v6, v7}, Lcom/mobclix/android/sdk/MobclixCreative;->access$7(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/Thread;)V

    .line 890
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->customAdThread:Ljava/lang/Thread;
    invoke-static {v6}, Lcom/mobclix/android/sdk/MobclixCreative;->access$8(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 891
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_3

    .line 897
    .end local v0           #customAdString:Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedHTML:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 899
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 900
    .local v2, mIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v6}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 912
    :goto_1
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/mobclix/android/sdk/MobclixCreative;->access$9(Z)V

    .line 913
    return-void

    .line 891
    .end local v2           #mIntent:Landroid/content/Intent;
    .restart local v0       #customAdString:Ljava/lang/String;
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 892
    .local v1, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v1, :cond_1

    .line 893
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v7, v7, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-interface {v1, v7, v0}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onCustomAdTouchThrough(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;)V

    goto :goto_0

    .line 902
    .end local v0           #customAdString:Ljava/lang/String;
    .end local v1           #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 903
    .restart local v2       #mIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v6}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, packageName:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->rawJSON:Lorg/json/JSONObject;

    const-string v7, "cachedHTML"

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedHTML:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :goto_2
    const-class v6, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 908
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".type"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "browser"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 909
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".data"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->rawJSON:Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 910
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v6}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 906
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method overlay()V
    .locals 21

    .prologue
    .line 916
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledX:F

    .line 917
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledY:F

    .line 918
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    move-object v4, v0

    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Landroid/app/Activity;

    .line 919
    .local v12, c:Landroid/app/Activity;
    invoke-virtual {v12}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    move-object v0, v4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v20, v0

    .line 920
    .local v20, width:I
    invoke-virtual {v12}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v13, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 922
    .local v13, height:I
    new-instance v16, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 923
    .local v16, rl:Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 925
    new-instance v15, Landroid/widget/ImageView;

    invoke-direct {v15, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 926
    .local v15, imageView:Landroid/widget/ImageView;
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageWidth:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageHeight:I

    move v5, v0

    invoke-direct {v14, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 927
    .local v14, imageLayout:Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 928
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageBitmap:Landroid/graphics/Bitmap;

    move-object v4, v0

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 929
    new-instance v4, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$Action;)V

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 974
    new-instance v4, Lcom/mobclix/android/sdk/MobclixCreative$Action$4;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$Action$4;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$Action;)V

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->position:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "top"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 977
    const/16 v4, 0xa

    invoke-virtual {v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 978
    const/16 v4, 0xe

    invoke-virtual {v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 979
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 980
    const/4 v8, 0x2

    const/high16 v9, -0x4080

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 979
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 990
    .local v3, inAnim:Landroid/view/animation/Animation;
    :goto_0
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 991
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 992
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 993
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 994
    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 995
    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 997
    new-instance v4, Landroid/app/Dialog;

    const/4 v5, 0x1

    invoke-direct {v4, v12, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    .line 998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 999
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 1000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v18

    .line 1002
    .local v18, tLayout:Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1003
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->modal:Z

    move v4, v0

    if-eqz v4, :cond_0

    .line 1004
    const/high16 v4, 0x3f00

    move v0, v4

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1005
    :cond_0
    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1006
    move v0, v13

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1010
    new-instance v4, Lcom/mobclix/android/sdk/MobclixCreative$Action$5;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$Action$5;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$Action;)V

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1019
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->trackingUrls:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1023
    return-void

    .line 981
    .end local v3           #inAnim:Landroid/view/animation/Animation;
    .end local v18           #tLayout:Landroid/view/WindowManager$LayoutParams;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->position:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "bottom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 982
    const/16 v4, 0xc

    invoke-virtual {v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 983
    const/16 v4, 0xe

    invoke-virtual {v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 984
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 985
    const/4 v8, 0x2

    const/high16 v9, 0x3f80

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 984
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v3       #inAnim:Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 987
    .end local v3           #inAnim:Landroid/view/animation/Animation;
    :cond_2
    const/16 v4, 0xd

    invoke-virtual {v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 988
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x3f80

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageWidth:I

    move v8, v0

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageHeight:I

    move v9, v0

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-direct/range {v3 .. v9}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .restart local v3       #inAnim:Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1019
    .restart local v18       #tLayout:Landroid/view/WindowManager$LayoutParams;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    .line 1020
    .local v17, t:Ljava/lang/String;
    new-instance v19, Ljava/lang/Thread;

    new-instance v5, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    new-instance v6, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    invoke-direct {v6}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v17

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1021
    .local v19, trackingThread:Ljava/lang/Thread;
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Thread;->start()V

    goto :goto_1
.end method
