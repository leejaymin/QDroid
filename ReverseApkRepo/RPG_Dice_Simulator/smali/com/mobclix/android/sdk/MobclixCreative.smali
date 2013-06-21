.class Lcom/mobclix/android/sdk/MobclixCreative;
.super Landroid/widget/ViewFlipper;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixCreative$Action;,
        Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;,
        Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;,
        Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;,
        Lcom/mobclix/android/sdk/MobclixCreative$Page;,
        Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;,
        Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;,
        Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;,
        Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;,
        Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;,
        Lcom/mobclix/android/sdk/MobclixCreative$TextPage;
    }
.end annotation


# static fields
.field private static isAutoplaying:Z


# instance fields
.field private final TAG:Ljava/lang/String;

.field private action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

.field private asyncRequestThreads:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/Thread;",
            ">;"
        }
    .end annotation
.end field

.field private creativeId:Ljava/lang/String;

.field private customAdThread:Ljava/lang/Thread;

.field final handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

.field private hasAutoplayed:Z

.field private loop:Z

.field private numPages:I

.field final pageCycleHandler:Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;

.field private pageCycleTimer:Ljava/util/Timer;

.field parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

.field rawResponse:Ljava/lang/String;

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

.field private transitionTime:I

.field private transitionType:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private visiblePage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobclix/android/sdk/MobclixCreative;->isAutoplaying:Z

    .line 55
    return-void
.end method

.method constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;Z)V
    .locals 10
    .parameter "a"
    .parameter "response"
    .parameter "ap"

    .prologue
    const/16 v8, 0xbb8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v5, "html"

    const-string v9, ""

    .line 83
    invoke-virtual {p1}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 56
    const-string v5, "mobclix-creative"

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->TAG:Ljava/lang/String;

    .line 60
    const-string v5, ""

    iput-object v9, p0, Lcom/mobclix/android/sdk/MobclixCreative;->rawResponse:Ljava/lang/String;

    .line 61
    const-string v5, ""

    iput-object v9, p0, Lcom/mobclix/android/sdk/MobclixCreative;->creativeId:Ljava/lang/String;

    .line 63
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->trackingUrls:Ljava/util/ArrayList;

    .line 66
    new-instance v5, Ljava/util/Stack;

    invoke-direct {v5}, Ljava/util/Stack;-><init>()V

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;

    .line 69
    iput v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->visiblePage:I

    .line 70
    const-string v5, "none"

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionType:Ljava/lang/String;

    .line 71
    iput-boolean v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->loop:Z

    .line 72
    iput-boolean v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->hasAutoplayed:Z

    .line 74
    iput v8, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    .line 75
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    .line 79
    new-instance v5, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    invoke-direct {v5, p0}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    .line 80
    new-instance v5, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;

    invoke-direct {v5, p0}, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleHandler:Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;

    .line 84
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    .line 85
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->rawResponse:Ljava/lang/String;

    .line 87
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 88
    .local v3, responseObject:Lorg/json/JSONObject;
    const-string v5, "creative"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 89
    .local v0, creative:Lorg/json/JSONObject;
    const-string v5, "props"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 90
    .local v2, properties:Lorg/json/JSONObject;
    :try_start_1
    const-string v5, "id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->creativeId:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_4

    .line 91
    :goto_0
    :try_start_2
    const-string v5, "type"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    .line 96
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    const-string v6, "html"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 97
    new-instance v5, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    const-string v6, "html"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, p0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixCreative;)V

    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixCreative;->addView(Landroid/view/View;)V

    .line 98
    const/4 v5, 0x1

    iput v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    .line 152
    .end local v0           #creative:Lorg/json/JSONObject;
    .end local v2           #properties:Lorg/json/JSONObject;
    .end local v3           #responseObject:Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 103
    .restart local v0       #creative:Lorg/json/JSONObject;
    .restart local v2       #properties:Lorg/json/JSONObject;
    .restart local v3       #responseObject:Lorg/json/JSONObject;
    :cond_0
    iput-boolean p3, p0, Lcom/mobclix/android/sdk/MobclixCreative;->hasAutoplayed:Z

    .line 104
    new-instance v5, Lcom/mobclix/android/sdk/MobclixCreative$Action;

    const-string v6, "action"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, p0, v6, p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    .line 108
    const-string v5, "trackingUrls"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 109
    .local v4, t:Lorg/json/JSONArray;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_1

    .line 119
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    const-string v6, "slider"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 120
    new-instance v5, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;

    invoke-direct {v5, p0, v2, p0}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V

    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixCreative;->addView(Landroid/view/View;)V

    .line 121
    const/4 v5, 0x1

    iput v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    .line 147
    :goto_3
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative;->runNextAsyncRequest()V

    goto :goto_1

    .line 149
    .end local v0           #creative:Lorg/json/JSONObject;
    .end local v1           #i:I
    .end local v2           #properties:Lorg/json/JSONObject;
    .end local v3           #responseObject:Lorg/json/JSONObject;
    .end local v4           #t:Lorg/json/JSONArray;
    :catch_0
    move-exception v5

    goto :goto_1

    .line 110
    .restart local v0       #creative:Lorg/json/JSONObject;
    .restart local v1       #i:I
    .restart local v2       #properties:Lorg/json/JSONObject;
    .restart local v3       #responseObject:Lorg/json/JSONObject;
    .restart local v4       #t:Lorg/json/JSONArray;
    :cond_1
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->trackingUrls:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;

    new-instance v6, Ljava/lang/Thread;

    new-instance v7, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Lcom/mobclix/android/sdk/MobclixCreative$1;

    invoke-direct {v9, p0}, Lcom/mobclix/android/sdk/MobclixCreative$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    invoke-direct {v7, v8, v9}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 125
    :cond_2
    :try_start_3
    const-string v5, "transitionType"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionType:Ljava/lang/String;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_3

    .line 126
    :goto_4
    :try_start_4
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionType:Ljava/lang/String;

    invoke-virtual {p0, p0, v5}, Lcom/mobclix/android/sdk/MobclixCreative;->setAnimationType(Landroid/widget/ViewFlipper;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    .line 128
    :try_start_5
    const-string v5, "transitionTime"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v5

    const-wide v7, 0x408f400000000000L

    mul-double/2addr v5, v7

    double-to-int v5, v5

    iput v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_2

    .line 129
    :goto_5
    :try_start_6
    iget v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    if-nez v5, :cond_3

    .line 130
    const/16 v5, 0xbb8

    iput v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    .line 131
    :cond_3
    :try_start_7
    const-string v5, "loop"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->loop:Z
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_1

    .line 133
    :goto_6
    :try_start_8
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    const-string v6, "image"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 134
    const-string v5, "images"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 135
    const/4 v1, 0x0

    :goto_7
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v1, v5, :cond_5

    .line 144
    :cond_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    iput v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    goto :goto_3

    .line 136
    :cond_5
    new-instance v5, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p0, v6, p0}, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixCreative;)V

    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixCreative;->addView(Landroid/view/View;)V

    .line 135
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 138
    :cond_6
    iget-object v5, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    const-string v6, "text"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 139
    const-string v5, "texts"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 140
    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 141
    new-instance v5, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;

    invoke-virtual {v4, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-direct {v5, p0, v6, p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V

    invoke-virtual {p0, v5}, Lcom/mobclix/android/sdk/MobclixCreative;->addView(Landroid/view/View;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 131
    :catch_1
    move-exception v5

    goto :goto_6

    .line 128
    :catch_2
    move-exception v5

    goto :goto_5

    .line 125
    :catch_3
    move-exception v5

    goto :goto_4

    .line 90
    .end local v1           #i:I
    .end local v4           #t:Lorg/json/JSONArray;
    :catch_4
    move-exception v5

    goto/16 :goto_0
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixCreative;)I
    .locals 1
    .parameter

    .prologue
    .line 69
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->visiblePage:I

    return v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixCreative;)I
    .locals 1
    .parameter

    .prologue
    .line 68
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    return v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixCreative;)Z
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->loop:Z

    return v0
.end method

.method static synthetic access$3(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mobclix/android/sdk/MobclixCreative;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 69
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->visiblePage:I

    return-void
.end method

.method static synthetic access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$7(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 77
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->customAdThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$8(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->customAdThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$9(Z)V
    .locals 0
    .parameter

    .prologue
    .line 73
    sput-boolean p0, Lcom/mobclix/android/sdk/MobclixCreative;->isAutoplaying:Z

    return-void
.end method

.method private dp(I)I
    .locals 2
    .parameter "p"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->scale:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public getCreativeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->creativeId:Ljava/lang/String;

    return-object v0
.end method

.method public getHasAutoplayed()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->hasAutoplayed:Z

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 162
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    .line 166
    :try_start_1
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    :try_start_2
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 183
    :goto_0
    return-void

    .line 168
    :catch_0
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v1, "mobclix-creative"

    const-string v2, "Android project  issue 6191  workaround."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 175
    :try_start_4
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 182
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V

    goto :goto_0

    .line 174
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 175
    :try_start_5
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 176
    throw v1

    .line 180
    :cond_0
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 192
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 194
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 197
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 199
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 200
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    .line 201
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    iget v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    int-to-long v2, v2

    iget v4, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 203
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 208
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->act()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 213
    :goto_0
    return v0

    .line 210
    :catch_0
    move-exception v0

    .line 213
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public runNextAsyncRequest()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 217
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Thread;

    .line 219
    .local v7, thread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 262
    .end local v7           #thread:Ljava/lang/Thread;
    :cond_0
    return-void

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    if-eqz v0, :cond_2

    .line 225
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->getAutoplay()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->hasAutoplayed:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/mobclix/android/sdk/MobclixCreative;->isAutoplaying:Z

    if-nez v0, :cond_2

    .line 226
    iput-boolean v3, p0, Lcom/mobclix/android/sdk/MobclixCreative;->hasAutoplayed:Z

    .line 227
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->act()Z

    .line 230
    :cond_2
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->visiblePage:I

    .line 231
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0, p0}, Lcom/mobclix/android/sdk/MobclixAdView;->addView(Landroid/view/View;)V

    .line 232
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iput-object p0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->ad:Landroid/view/View;

    .line 233
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->prevAd:Landroid/view/View;

    if-eqz v0, :cond_7

    .line 235
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->rotate:Z

    if-eqz v0, :cond_6

    .line 236
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    const-string v1, "flipRight"

    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative;->setAnimationType(Landroid/widget/ViewFlipper;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->showNext()V

    .line 246
    :goto_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->prevCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v0, :cond_3

    .line 247
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->prevCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->onPause()V

    .line 248
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iput-object v4, v0, Lcom/mobclix/android/sdk/MobclixAdView;->prevCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 250
    :cond_3
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    const-string v1, "slider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 251
    invoke-virtual {p0, v2}, Lcom/mobclix/android/sdk/MobclixCreative;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->act()V

    .line 257
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 258
    .local v6, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v6, :cond_5

    .line 259
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-interface {v6, v1}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onSuccessfulLoad(Lcom/mobclix/android/sdk/MobclixAdView;)V

    goto :goto_2

    .line 239
    .end local v6           #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    :cond_6
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->showNext()V

    .line 240
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v1, v1, Lcom/mobclix/android/sdk/MobclixAdView;->prevAd:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/mobclix/android/sdk/MobclixAdView;->removeView(Landroid/view/View;)V

    .line 241
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iput-object v4, v0, Lcom/mobclix/android/sdk/MobclixAdView;->prevAd:Landroid/view/View;

    goto :goto_0

    .line 244
    :cond_7
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->showNext()V

    goto :goto_0

    .line 252
    :cond_8
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    if-le v0, v3, :cond_4

    .line 253
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative;->onPause()V

    .line 254
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    .line 255
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    iget v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    int-to-long v2, v2

    iget v4, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_1
.end method

.method public setAnimationType(Landroid/widget/ViewFlipper;Ljava/lang/String;)V
    .locals 11
    .parameter "v"
    .parameter "transition"

    .prologue
    .line 267
    if-nez p2, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    const-string v2, "fade"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 271
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 272
    .local v0, outAnim:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 304
    .local v1, inAnim:Landroid/view/animation/Animation;
    :goto_1
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 305
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 306
    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 307
    invoke-virtual {p1, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 273
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_2
    const-string v2, "slideRight"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 274
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f80

    .line 275
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 274
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 276
    .restart local v0       #outAnim:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/high16 v3, -0x4080

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 277
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 276
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 278
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_3
    const-string v2, "slideLeft"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 279
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, -0x4080

    .line 280
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v2, v0

    .line 279
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 281
    .restart local v0       #outAnim:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/high16 v3, 0x3f80

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 282
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 281
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 283
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_4
    const-string v2, "slideUp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 284
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 285
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/high16 v10, -0x4080

    move-object v2, v0

    .line 284
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 286
    .restart local v0       #outAnim:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 287
    const/4 v6, 0x2

    const/high16 v7, 0x3f80

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 286
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 288
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_5
    const-string v2, "slideDown"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 289
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 290
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/high16 v10, 0x3f80

    move-object v2, v0

    .line 289
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 291
    .restart local v0       #outAnim:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 292
    const/4 v6, 0x2

    const/high16 v7, -0x4080

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 291
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 293
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_6
    const-string v2, "flipRight"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 294
    new-instance v0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;

    const/4 v4, 0x0

    const/high16 v5, 0x42b4

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v6, v2, v3

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v7, v2, v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;FFFFFZ)V

    .line 295
    .restart local v0       #outAnim:Landroid/view/animation/Animation;
    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;

    const/high16 v3, -0x3d4c

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x4000

    div-float v5, v2, v5

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;FFFFFZ)V

    .line 296
    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto/16 :goto_1

    .line 297
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_7
    const-string v2, "flipLeft"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    new-instance v0, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;

    const/4 v4, 0x0

    const/high16 v5, -0x3d4c

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v6, v2, v3

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x4000

    div-float v7, v2, v3

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;FFFFFZ)V

    .line 299
    .restart local v0       #outAnim:Landroid/view/animation/Animation;
    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;

    const/high16 v3, 0x42b4

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v5, 0x4000

    div-float v5, v2, v5

    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixAdView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/high16 v6, 0x4000

    div-float v6, v2, v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/mobclix/android/sdk/MobclixCreative$Rotate3dAnimation;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;FFFFFZ)V

    .line 300
    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto/16 :goto_1
.end method
