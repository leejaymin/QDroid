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

.field private browserType:Ljava/lang/String;

.field cachedHTML:Ljava/lang/String;

.field cachedImageBitmap:Landroid/graphics/Bitmap;

.field cachedImageHeight:I

.field cachedImageWidth:I

.field imageUrl:Ljava/lang/String;

.field modal:Z

.field private mx:F

.field private my:F

.field private onShowUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private onTouchUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field overlay:Landroid/app/Dialog;

.field private parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

.field position:Ljava/lang/String;

.field private rawJSON:Lorg/json/JSONObject;

.field private scrolledX:F

.field private scrolledY:F

.field private startX:F

.field private startY:F

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;

.field private type:Ljava/lang/String;

.field private url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 7
    .parameter
    .parameter "action"
    .parameter "creative"

    .prologue
    const-string v4, "url"

    const-string v4, "html"

    const-string v4, "autoplay"

    const-string v4, "browserType"

    const-string v5, ""

    .line 1073
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 1014
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 992
    const-string v4, ""

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    .line 993
    const-string v4, ""

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    .line 994
    const-string v4, "standard"

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->browserType:Ljava/lang/String;

    .line 995
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->autoplay:Z

    .line 998
    const-string v4, "center"

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->position:Ljava/lang/String;

    .line 999
    const-string v4, ""

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->imageUrl:Ljava/lang/String;

    .line 1000
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->modal:Z

    .line 1005
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageBitmap:Landroid/graphics/Bitmap;

    .line 1007
    const-string v4, ""

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedHTML:Ljava/lang/String;

    .line 1009
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->onShowUrls:Ljava/util/ArrayList;

    .line 1010
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->onTouchUrls:Ljava/util/ArrayList;

    .line 1016
    :try_start_0
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->rawJSON:Lorg/json/JSONObject;

    .line 1017
    iput-object p3, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 1018
    const-string v4, "type"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    .line 1019
    const-string v4, "autoplay"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1020
    const-string v4, "autoplay"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->autoplay:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1026
    :cond_0
    :try_start_1
    const-string v4, "eventUrls"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1027
    .local v1, eventUrls:Lorg/json/JSONObject;
    const-string v4, "onShow"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1028
    .local v3, t:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lt v2, v4, :cond_2

    .line 1031
    const-string v4, "onTouch"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1032
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-lt v2, v4, :cond_3

    .line 1039
    .end local v1           #eventUrls:Lorg/json/JSONObject;
    .end local v2           #i:I
    .end local v3           #t:Lorg/json/JSONArray;
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    const-string v5, "url"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    if-eqz v4, :cond_4

    .line 1040
    :try_start_3
    const-string v4, "url"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_a

    .line 1041
    :goto_3
    :try_start_4
    const-string v4, "browserType"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->browserType:Ljava/lang/String;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_9

    .line 1043
    :goto_4
    :try_start_5
    const-string v4, "preload"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1044
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->loadPreload()V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_8

    .line 1070
    :cond_1
    :goto_5
    return-void

    .line 1029
    .restart local v1       #eventUrls:Lorg/json/JSONObject;
    .restart local v2       #i:I
    .restart local v3       #t:Lorg/json/JSONArray;
    :cond_2
    :try_start_6
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->onShowUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1028
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1033
    :cond_3
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->onTouchUrls:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_b
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1032
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1046
    .end local v1           #eventUrls:Lorg/json/JSONObject;
    .end local v2           #i:I
    .end local v3           #t:Lorg/json/JSONArray;
    :cond_4
    :try_start_7
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    const-string v5, "html"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    move-result v4

    if-eqz v4, :cond_5

    .line 1047
    :try_start_8
    const-string v4, "baseUrl"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_7

    .line 1048
    :goto_6
    :try_start_9
    const-string v4, "html"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedHTML:Ljava/lang/String;
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_6

    .line 1049
    :goto_7
    :try_start_a
    const-string v4, "browserType"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->browserType:Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_5

    :catch_0
    move-exception v4

    goto :goto_5

    .line 1050
    :cond_5
    :try_start_b
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    const-string v5, "overlay"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1051
    const-string v4, "imageUrl"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->imageUrl:Ljava/lang/String;
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    .line 1052
    :try_start_c
    const-string v4, "position"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->position:Ljava/lang/String;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_5

    .line 1053
    :goto_8
    :try_start_d
    const-string v4, "modal"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->modal:Z
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_4

    .line 1054
    :goto_9
    :try_start_e
    const-string v4, "destinationUrl"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_3

    .line 1055
    :goto_a
    :try_start_f
    const-string v4, "browserType"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->browserType:Ljava/lang/String;
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_2

    .line 1056
    :goto_b
    :try_start_10
    new-instance v0, Ljava/lang/Thread;

    new-instance v4, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->imageUrl:Ljava/lang/String;

    new-instance v6, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;

    invoke-direct {v6, p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$Action;)V

    invoke-direct {v4, v5, v6}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1068
    .local v0, cacheThread:Ljava/lang/Thread;
    iget-object v4, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;
    invoke-static {v4}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_5

    .line 1070
    .end local v0           #cacheThread:Ljava/lang/Thread;
    :catch_1
    move-exception v4

    goto/16 :goto_5

    .line 1055
    :catch_2
    move-exception v4

    goto :goto_b

    .line 1054
    :catch_3
    move-exception v4

    goto :goto_a

    .line 1053
    :catch_4
    move-exception v4

    goto :goto_9

    .line 1052
    :catch_5
    move-exception v4

    goto :goto_8

    .line 1048
    :catch_6
    move-exception v4

    goto :goto_7

    .line 1047
    :catch_7
    move-exception v4

    goto :goto_6

    .line 1045
    :catch_8
    move-exception v4

    goto/16 :goto_5

    .line 1041
    :catch_9
    move-exception v4

    goto/16 :goto_4

    .line 1040
    :catch_a
    move-exception v4

    goto/16 :goto_3

    .line 1036
    :catch_b
    move-exception v4

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixCreative$Action;)Lcom/mobclix/android/sdk/MobclixCreative;
    .locals 1
    .parameter

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    return-object v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1002
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->mx:F

    return-void
.end method

.method static synthetic access$10(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1004
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledY:F

    return-void
.end method

.method static synthetic access$11(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F
    .locals 1
    .parameter

    .prologue
    .line 1003
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->startX:F

    return v0
.end method

.method static synthetic access$12(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F
    .locals 1
    .parameter

    .prologue
    .line 1003
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->startY:F

    return v0
.end method

.method static synthetic access$13(Lcom/mobclix/android/sdk/MobclixCreative$Action;)Lcom/mobclix/android/sdk/MobclixCreative;
    .locals 1
    .parameter

    .prologue
    .line 991
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    return-object v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1003
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->startX:F

    return-void
.end method

.method static synthetic access$3(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1002
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->my:F

    return-void
.end method

.method static synthetic access$4(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1003
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->startY:F

    return-void
.end method

.method static synthetic access$5(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F
    .locals 1
    .parameter

    .prologue
    .line 1002
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->mx:F

    return v0
.end method

.method static synthetic access$6(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F
    .locals 1
    .parameter

    .prologue
    .line 1002
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->my:F

    return v0
.end method

.method static synthetic access$7(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F
    .locals 1
    .parameter

    .prologue
    .line 1004
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledX:F

    return v0
.end method

.method static synthetic access$8(Lcom/mobclix/android/sdk/MobclixCreative$Action;F)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1004
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledX:F

    return-void
.end method

.method static synthetic access$9(Lcom/mobclix/android/sdk/MobclixCreative$Action;)F
    .locals 1
    .parameter

    .prologue
    .line 1004
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledY:F

    return v0
.end method


# virtual methods
.method public act()Z
    .locals 10

    .prologue
    const/4 v8, 0x1

    const-string v9, "video"

    .line 1094
    :try_start_0
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->onShowUrls:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-nez v6, :cond_3

    .line 1100
    :goto_1
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    .line 1105
    invoke-static {v8}, Lcom/mobclix/android/sdk/MobclixCreative;->access$9(Z)V

    .line 1106
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    const-string v6, "url"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    const-string v6, "html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1107
    :cond_1
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->loadUrl()V

    .line 1108
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/mobclix/android/sdk/MobclixCreative;->access$9(Z)V

    .line 1119
    :cond_2
    :goto_3
    return v8

    .line 1094
    :cond_3
    :try_start_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1095
    .local v3, t:Ljava/lang/String;
    new-instance v4, Ljava/lang/Thread;

    new-instance v6, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    new-instance v7, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    invoke-direct {v7}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    invoke-direct {v6, v3, v7}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1096
    .local v4, trackingThread:Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1098
    .end local v3           #t:Ljava/lang/String;
    .end local v4           #trackingThread:Ljava/lang/Thread;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 1100
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 1101
    .local v0, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v0, :cond_0

    .line 1102
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-interface {v0, v6}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onAdClick(Lcom/mobclix/android/sdk/MobclixAdView;)V

    goto :goto_2

    .line 1109
    .end local v0           #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    :cond_5
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    const-string v6, "video"

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1110
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1111
    .local v1, mIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1112
    .local v2, packageName:Ljava/lang/String;
    const-class v5, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".type"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "video"

    invoke-virtual {v5, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 1114
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ".data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->rawJSON:Lorg/json/JSONObject;

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1115
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v5}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 1116
    .end local v1           #mIntent:Landroid/content/Intent;
    .end local v2           #packageName:Ljava/lang/String;
    :cond_6
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->type:Ljava/lang/String;

    const-string v6, "overlay"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1117
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay()V

    goto/16 :goto_3
.end method

.method public getAutoplay()Z
    .locals 1

    .prologue
    .line 1074
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->autoplay:Z

    return v0
.end method

.method loadPreload()V
    .locals 4

    .prologue
    .line 1077
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    new-instance v3, Lcom/mobclix/android/sdk/MobclixCreative$Action$2;

    invoke-direct {v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action$2;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$Action;)V

    invoke-direct {v1, v2, v3}, Lcom/mobclix/android/sdk/Mobclix$FetchResponseThread;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1088
    .local v0, preloadHTML:Ljava/lang/Thread;
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;
    invoke-static {v1}, Lcom/mobclix/android/sdk/MobclixCreative;->access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1090
    return-void
.end method

.method loadUrl()V
    .locals 15

    .prologue
    const/4 v8, 0x1

    const-string v14, "browser"

    const-string v13, ".type"

    const-string v12, ".data"

    const-string v11, ""

    .line 1123
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1168
    :goto_0
    return-void

    .line 1125
    :cond_0
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1130
    .local v5, uri:Landroid/net/Uri;
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    const-string v7, "mobclix://"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, tmp:[Ljava/lang/String;
    array-length v6, v4

    if-gt v6, v8, :cond_1

    .line 1131
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->url:Ljava/lang/String;

    const-string v7, "mobclix%3A%2F%2F"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    if-le v6, v8, :cond_3

    .line 1133
    :cond_1
    aget-object v0, v4, v8

    .line 1135
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

    .line 1136
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    #getter for: Lcom/mobclix/android/sdk/MobclixCreative;->customAdThread:Ljava/lang/Thread;
    invoke-static {v6}, Lcom/mobclix/android/sdk/MobclixCreative;->access$8(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/lang/Thread;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 1137
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1143
    .end local v0           #customAdString:Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedHTML:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1144
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->browserType:Ljava/lang/String;

    const-string v7, "minimal"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1145
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1146
    .local v2, mIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v6}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1147
    .local v3, packageName:Ljava/lang/String;
    const-class v6, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1148
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".type"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "browser"

    invoke-virtual {v6, v7, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".data"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->rawJSON:Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1150
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v6}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1137
    .end local v2           #mIntent:Landroid/content/Intent;
    .end local v3           #packageName:Ljava/lang/String;
    .restart local v0       #customAdString:Ljava/lang/String;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 1138
    .local v1, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v1, :cond_2

    .line 1139
    iget-object v7, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v7, v7, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-interface {v1, v7, v0}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onCustomAdTouchThrough(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1154
    .end local v0           #customAdString:Ljava/lang/String;
    .end local v1           #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    :cond_5
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v2, v6, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1155
    .restart local v2       #mIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v6}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1167
    :goto_2
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/mobclix/android/sdk/MobclixCreative;->access$9(Z)V

    goto/16 :goto_0

    .line 1157
    .end local v2           #mIntent:Landroid/content/Intent;
    :cond_6
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1158
    .restart local v2       #mIntent:Landroid/content/Intent;
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    iget-object v6, v6, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v6}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1160
    .restart local v3       #packageName:Ljava/lang/String;
    :try_start_0
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->rawJSON:Lorg/json/JSONObject;

    const-string v7, "cachedHTML"

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedHTML:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1162
    :goto_3
    const-class v6, Lcom/mobclix/android/sdk/MobclixBrowserActivity;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1163
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".type"

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "browser"

    invoke-virtual {v6, v7, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 1164
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ".data"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->rawJSON:Lorg/json/JSONObject;

    invoke-virtual {v8}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1165
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v6}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 1161
    :catch_0
    move-exception v6

    goto :goto_3
.end method

.method overlay()V
    .locals 22

    .prologue
    .line 1171
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledX:F

    .line 1172
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/mobclix/android/sdk/MobclixCreative$Action;->scrolledY:F

    .line 1173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    move-object v4, v0

    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v4}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v12

    check-cast v12, Landroid/app/Activity;

    .line 1174
    .local v12, c:Landroid/app/Activity;
    invoke-virtual {v12}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    move-object v0, v4

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    move/from16 v21, v0

    .line 1175
    .local v21, width:I
    invoke-virtual {v12}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v4

    iget v13, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1177
    .local v13, height:I
    new-instance v17, Landroid/widget/RelativeLayout;

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 1178
    .local v17, rl:Landroid/widget/RelativeLayout;
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1180
    new-instance v15, Landroid/widget/ImageView;

    invoke-direct {v15, v12}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1181
    .local v15, imageView:Landroid/widget/ImageView;
    new-instance v14, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageWidth:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageHeight:I

    move v5, v0

    invoke-direct {v14, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1182
    .local v14, imageLayout:Landroid/widget/RelativeLayout$LayoutParams;
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->cachedImageBitmap:Landroid/graphics/Bitmap;

    move-object v4, v0

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1184
    new-instance v4, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$Action$3;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$Action;)V

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1229
    new-instance v4, Lcom/mobclix/android/sdk/MobclixCreative$Action$4;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$Action$4;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$Action;)V

    invoke-virtual {v15, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->position:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "top"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1232
    const/16 v4, 0xa

    invoke-virtual {v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1233
    const/16 v4, 0xe

    invoke-virtual {v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1234
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 1235
    const/4 v8, 0x2

    const/high16 v9, -0x4080

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 1234
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 1245
    .local v3, inAnim:Landroid/view/animation/Animation;
    :goto_0
    const-wide/16 v4, 0x12c

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1246
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1247
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 1248
    invoke-virtual {v15, v14}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1249
    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1250
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1252
    new-instance v4, Landroid/app/Dialog;

    const/4 v5, 0x1

    invoke-direct {v4, v12, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    .line 1253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 1254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/view/Window;->requestFeature(I)Z

    .line 1255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v19

    .line 1257
    .local v19, tLayout:Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1258
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->modal:Z

    move v4, v0

    if-eqz v4, :cond_0

    .line 1259
    const/high16 v4, 0x3f00

    move v0, v4

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 1260
    :cond_0
    move/from16 v0, v21

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1261
    move v0, v13

    move-object/from16 v1, v19

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 1263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 1265
    new-instance v4, Lcom/mobclix/android/sdk/MobclixCreative$Action$5;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative$Action$5;-><init>(Lcom/mobclix/android/sdk/MobclixCreative$Action;)V

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->overlay:Landroid/app/Dialog;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    move-object v4, v0

    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v4, v4, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 1279
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->onTouchUrls:Ljava/util/ArrayList;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_5

    .line 1284
    :goto_3
    return-void

    .line 1236
    .end local v3           #inAnim:Landroid/view/animation/Animation;
    .end local v19           #tLayout:Landroid/view/WindowManager$LayoutParams;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->position:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "bottom"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1237
    const/16 v4, 0xc

    invoke-virtual {v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1238
    const/16 v4, 0xe

    invoke-virtual {v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1239
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 1240
    const/4 v8, 0x2

    const/high16 v9, 0x3f80

    const/4 v10, 0x2

    const/4 v11, 0x0

    .line 1239
    invoke-direct/range {v3 .. v11}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v3       #inAnim:Landroid/view/animation/Animation;
    goto/16 :goto_0

    .line 1242
    .end local v3           #inAnim:Landroid/view/animation/Animation;
    :cond_3
    const/16 v4, 0xd

    invoke-virtual {v14, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1243
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

    .line 1273
    .restart local v19       #tLayout:Landroid/view/WindowManager$LayoutParams;
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 1274
    .local v16, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v16, :cond_1

    .line 1275
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixCreative$Action;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    move-object v5, v0

    iget-object v5, v5, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-interface {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onAdClick(Lcom/mobclix/android/sdk/MobclixAdView;)V

    goto :goto_1

    .line 1279
    .end local v16           #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    :cond_5
    :try_start_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    .line 1280
    .local v18, t:Ljava/lang/String;
    new-instance v20, Ljava/lang/Thread;

    new-instance v5, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    new-instance v6, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    invoke-direct {v6}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v18

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1281
    .local v20, trackingThread:Ljava/lang/Thread;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 1283
    .end local v18           #t:Ljava/lang/String;
    .end local v20           #trackingThread:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    goto/16 :goto_3
.end method
