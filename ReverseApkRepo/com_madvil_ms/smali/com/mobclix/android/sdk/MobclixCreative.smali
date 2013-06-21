.class Lcom/mobclix/android/sdk/MobclixCreative;
.super Landroid/widget/ViewFlipper;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobclix/android/sdk/MobclixCreative$Action;,
        Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;,
        Lcom/mobclix/android/sdk/MobclixCreative$CustomAdThread;,
        Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;,
        Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;,
        Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;,
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

.field private onLoadUrls:Ljava/util/ArrayList;
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

.field final pageCycleHandler:Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;

.field private pageCycleTimer:Ljava/util/Timer;

.field parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

.field rawResponse:Ljava/lang/String;

.field private transitionTime:I

.field private transitionType:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private visiblePage:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobclix/android/sdk/MobclixCreative;->isAutoplaying:Z

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/mobclix/android/sdk/MobclixAdView;Ljava/lang/String;Z)V
    .locals 11
    .parameter "a"
    .parameter "response"
    .parameter "ap"

    .prologue
    const/16 v9, 0xbb8

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 89
    invoke-virtual {p1}, Lcom/mobclix/android/sdk/MobclixAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;)V

    .line 61
    const-string v6, "mobclix-creative"

    iput-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->TAG:Ljava/lang/String;

    .line 65
    const-string v6, ""

    iput-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->rawResponse:Ljava/lang/String;

    .line 66
    const-string v6, ""

    iput-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->creativeId:Ljava/lang/String;

    .line 68
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->onLoadUrls:Ljava/util/ArrayList;

    .line 69
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->onTouchUrls:Ljava/util/ArrayList;

    .line 72
    new-instance v6, Ljava/util/Stack;

    invoke-direct {v6}, Ljava/util/Stack;-><init>()V

    iput-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;

    .line 74
    iput v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    .line 75
    iput v8, p0, Lcom/mobclix/android/sdk/MobclixCreative;->visiblePage:I

    .line 76
    const-string v6, "none"

    iput-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionType:Ljava/lang/String;

    .line 77
    iput-boolean v7, p0, Lcom/mobclix/android/sdk/MobclixCreative;->loop:Z

    .line 78
    iput-boolean v8, p0, Lcom/mobclix/android/sdk/MobclixCreative;->hasAutoplayed:Z

    .line 80
    iput v9, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    .line 81
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    .line 85
    new-instance v6, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    invoke-direct {v6, p0}, Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    iput-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->handler:Lcom/mobclix/android/sdk/MobclixCreative$ResourceResponseHandler;

    .line 86
    new-instance v6, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;

    invoke-direct {v6, p0}, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    iput-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleHandler:Lcom/mobclix/android/sdk/MobclixCreative$PageCycleHandler;

    .line 91
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    .line 92
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->rawResponse:Ljava/lang/String;

    .line 94
    :try_start_0
    const-string v6, ""

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 95
    new-instance v6, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;

    invoke-direct {v6, p0, p0}, Lcom/mobclix/android/sdk/MobclixCreative$CustomAdPage;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lcom/mobclix/android/sdk/MobclixCreative;)V

    invoke-virtual {p0, v6}, Lcom/mobclix/android/sdk/MobclixCreative;->addView(Landroid/view/View;)V

    .line 96
    const/4 v6, 0x1

    iput v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    .line 97
    const-string v6, "customAd"

    iput-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    .line 190
    :goto_0
    return-void

    .line 101
    :cond_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .local v4, responseObject:Lorg/json/JSONObject;
    const-string v6, "creative"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    .local v0, creative:Lorg/json/JSONObject;
    :try_start_1
    const-string v6, "eventUrls"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 110
    .local v1, eventUrls:Lorg/json/JSONObject;
    :try_start_2
    const-string v6, "onLoad"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 111
    .local v5, t:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_6
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v6

    if-lt v2, v6, :cond_1

    .line 121
    .end local v2           #i:I
    .end local v5           #t:Lorg/json/JSONArray;
    :goto_2
    :try_start_3
    const-string v6, "onTouch"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 122
    .restart local v5       #t:Lorg/json/JSONArray;
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_3
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    move-result v6

    if-lt v2, v6, :cond_2

    .line 130
    .end local v1           #eventUrls:Lorg/json/JSONObject;
    .end local v2           #i:I
    .end local v5           #t:Lorg/json/JSONArray;
    :goto_4
    :try_start_4
    const-string v6, "props"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v3

    .line 131
    .local v3, properties:Lorg/json/JSONObject;
    :try_start_5
    const-string v6, "id"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->creativeId:Ljava/lang/String;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_4

    .line 132
    :goto_5
    :try_start_6
    const-string v6, "type"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    .line 137
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    const-string v7, "html"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 138
    new-instance v6, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;

    const-string v7, "html"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, p0}, Lcom/mobclix/android/sdk/MobclixCreative$HTMLPage;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixCreative;)V

    invoke-virtual {p0, v6}, Lcom/mobclix/android/sdk/MobclixCreative;->addView(Landroid/view/View;)V

    .line 139
    const/4 v6, 0x1

    iput v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    .line 187
    .end local v0           #creative:Lorg/json/JSONObject;
    .end local v3           #properties:Lorg/json/JSONObject;
    .end local v4           #responseObject:Lorg/json/JSONObject;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 112
    .restart local v0       #creative:Lorg/json/JSONObject;
    .restart local v1       #eventUrls:Lorg/json/JSONObject;
    .restart local v2       #i:I
    .restart local v4       #responseObject:Lorg/json/JSONObject;
    .restart local v5       #t:Lorg/json/JSONArray;
    :cond_1
    :try_start_7
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->onLoadUrls:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;

    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lcom/mobclix/android/sdk/MobclixCreative$1;

    invoke-direct {v10, p0}, Lcom/mobclix/android/sdk/MobclixCreative$1;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    invoke-direct {v8, v9, v10}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v6, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    :cond_2
    :try_start_8
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->onTouchUrls:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    .line 122
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 144
    .end local v1           #eventUrls:Lorg/json/JSONObject;
    .end local v2           #i:I
    .end local v5           #t:Lorg/json/JSONArray;
    .restart local v3       #properties:Lorg/json/JSONObject;
    :cond_3
    :try_start_9
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    const-string v7, "openallocation"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 145
    new-instance v6, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;

    invoke-direct {v6, p0, v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$OpenAllocationPage;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V

    invoke-virtual {p0, v6}, Lcom/mobclix/android/sdk/MobclixCreative;->addView(Landroid/view/View;)V

    .line 146
    const/4 v6, 0x1

    iput v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    goto/16 :goto_0

    .line 151
    :cond_4
    iput-boolean p3, p0, Lcom/mobclix/android/sdk/MobclixCreative;->hasAutoplayed:Z

    .line 152
    new-instance v6, Lcom/mobclix/android/sdk/MobclixCreative$Action;

    const-string v7, "action"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, p0, v7, p0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V

    iput-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    .line 155
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    const-string v7, "slider"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 156
    new-instance v6, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;

    invoke-direct {v6, p0, v3, p0}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V

    invoke-virtual {p0, v6}, Lcom/mobclix/android/sdk/MobclixCreative;->addView(Landroid/view/View;)V

    .line 157
    const/4 v6, 0x1

    iput v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    .line 185
    :cond_5
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative;->runNextAsyncRequest()V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0

    .line 161
    :cond_6
    :try_start_a
    const-string v6, "transitionType"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionType:Ljava/lang/String;
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3

    .line 162
    :goto_6
    :try_start_b
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionType:Ljava/lang/String;

    invoke-virtual {p0, p0, v6}, Lcom/mobclix/android/sdk/MobclixCreative;->setAnimationType(Landroid/widget/ViewFlipper;Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    .line 164
    :try_start_c
    const-string v6, "transitionTime"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v6

    const-wide v8, 0x408f400000000000L

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_2

    .line 165
    :goto_7
    :try_start_d
    iget v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    if-nez v6, :cond_7

    .line 166
    const/16 v6, 0xbb8

    iput v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0

    .line 167
    :cond_7
    :try_start_e
    const-string v6, "loop"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->loop:Z
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_1

    .line 170
    :goto_8
    :try_start_f
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    const-string v7, "image"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 171
    const-string v6, "images"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 172
    .restart local v5       #t:Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    iput v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    .line 173
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_9
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 174
    new-instance v6, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p0, v7, p0}, Lcom/mobclix/android/sdk/MobclixCreative$ImagePage;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/String;Lcom/mobclix/android/sdk/MobclixCreative;)V

    invoke-virtual {p0, v6}, Lcom/mobclix/android/sdk/MobclixCreative;->addView(Landroid/view/View;)V

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 176
    .end local v2           #i:I
    .end local v5           #t:Lorg/json/JSONArray;
    :cond_8
    iget-object v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    const-string v7, "text"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 177
    const-string v6, "texts"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 178
    .restart local v5       #t:Lorg/json/JSONArray;
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    iput v6, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    .line 179
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_a
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v2, v6, :cond_5

    .line 180
    new-instance v6, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;

    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-direct {v6, p0, v7, p0}, Lcom/mobclix/android/sdk/MobclixCreative$TextPage;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;Lorg/json/JSONObject;Lcom/mobclix/android/sdk/MobclixCreative;)V

    invoke-virtual {p0, v6}, Lcom/mobclix/android/sdk/MobclixCreative;->addView(Landroid/view/View;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0

    .line 179
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 167
    .end local v2           #i:I
    .end local v5           #t:Lorg/json/JSONArray;
    :catch_1
    move-exception v6

    goto :goto_8

    .line 164
    :catch_2
    move-exception v6

    goto :goto_7

    .line 161
    :catch_3
    move-exception v6

    goto/16 :goto_6

    .line 131
    :catch_4
    move-exception v6

    goto/16 :goto_5

    .line 126
    .end local v3           #properties:Lorg/json/JSONObject;
    :catch_5
    move-exception v6

    goto/16 :goto_4

    .line 119
    .restart local v1       #eventUrls:Lorg/json/JSONObject;
    :catch_6
    move-exception v6

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lcom/mobclix/android/sdk/MobclixCreative;)I
    .locals 1
    .parameter

    .prologue
    .line 75
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->visiblePage:I

    return v0
.end method

.method static synthetic access$1(Lcom/mobclix/android/sdk/MobclixCreative;)I
    .locals 1
    .parameter

    .prologue
    .line 74
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    return v0
.end method

.method static synthetic access$2(Lcom/mobclix/android/sdk/MobclixCreative;)Z
    .locals 1
    .parameter

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->loop:Z

    return v0
.end method

.method static synthetic access$3(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Timer;
    .locals 1
    .parameter

    .prologue
    .line 81
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/mobclix/android/sdk/MobclixCreative;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 75
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->visiblePage:I

    return-void
.end method

.method static synthetic access$5(Lcom/mobclix/android/sdk/MobclixCreative;I)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 223
    invoke-direct {p0, p1}, Lcom/mobclix/android/sdk/MobclixCreative;->dp(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$6(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/util/Stack;
    .locals 1
    .parameter

    .prologue
    .line 72
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$7(Lcom/mobclix/android/sdk/MobclixCreative;Ljava/lang/Thread;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->customAdThread:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic access$8(Lcom/mobclix/android/sdk/MobclixCreative;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->customAdThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$9(Z)V
    .locals 0
    .parameter

    .prologue
    .line 79
    sput-boolean p0, Lcom/mobclix/android/sdk/MobclixCreative;->isAutoplaying:Z

    return-void
.end method

.method private dp(I)I
    .locals 2
    .parameter "p"

    .prologue
    .line 224
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
    .line 193
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->creativeId:Ljava/lang/String;

    return-object v0
.end method

.method public getHasAutoplayed()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->hasAutoplayed:Z

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    .line 200
    :try_start_0
    sget-object v1, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    .line 204
    :try_start_1
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 213
    :try_start_2
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 221
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 208
    .local v0, e:Ljava/lang/IllegalArgumentException;
    :try_start_3
    const-string v1, "mobclix-creative"

    const-string v2, "Android project  issue 6191  workaround."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    :try_start_4
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 220
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V

    goto :goto_0

    .line 212
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    .line 213
    :try_start_5
    invoke-super {p0}, Landroid/widget/ViewFlipper;->stopFlipping()V

    .line 214
    throw v1

    .line 218
    :cond_0
    invoke-super {p0}, Landroid/widget/ViewFlipper;->onDetachedFromWindow()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 230
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 232
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 6

    .prologue
    .line 235
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 237
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 238
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    .line 239
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    iget v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    int-to-long v2, v2

    iget v4, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 241
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "e"

    .prologue
    .line 246
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 247
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->onTouchUrls:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 251
    iget-object v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    invoke-virtual {v2}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->act()Z

    move-result v2

    .line 256
    :goto_1
    return v2

    .line 247
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 248
    .local v0, t:Ljava/lang/String;
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;

    new-instance v4, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;

    invoke-direct {v4}, Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;-><init>()V

    invoke-direct {v3, v0, v4}, Lcom/mobclix/android/sdk/Mobclix$FetchImageThread;-><init>(Ljava/lang/String;Lcom/mobclix/android/sdk/Mobclix$BitmapHandler;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 249
    .local v1, trackingThread:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 253
    .end local v0           #t:Ljava/lang/String;
    .end local v1           #trackingThread:Ljava/lang/Thread;
    :catch_0
    move-exception v2

    .line 256
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public runNextAsyncRequest()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 260
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->asyncRequestThreads:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Thread;

    .line 262
    .local v7, thread:Ljava/lang/Thread;
    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 302
    .end local v7           #thread:Ljava/lang/Thread;
    :cond_0
    return-void

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    if-eqz v0, :cond_2

    .line 268
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->getAutoplay()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->allowAutoplay()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->hasAutoplayed:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/mobclix/android/sdk/MobclixCreative;->isAutoplaying:Z

    if-nez v0, :cond_2

    .line 269
    iput-boolean v3, p0, Lcom/mobclix/android/sdk/MobclixCreative;->hasAutoplayed:Z

    .line 270
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->action:Lcom/mobclix/android/sdk/MobclixCreative$Action;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$Action;->act()Z

    .line 273
    :cond_2
    iput v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->visiblePage:I

    .line 276
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->getChildCount()I

    move-result v0

    if-le v0, v3, :cond_3

    .line 277
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0, v2}, Lcom/mobclix/android/sdk/MobclixAdView;->removeViewAt(I)V

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0, p0}, Lcom/mobclix/android/sdk/MobclixAdView;->addView(Landroid/view/View;)V

    .line 281
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->prevAd:Lcom/mobclix/android/sdk/MobclixCreative;

    if-eqz v0, :cond_4

    .line 282
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->prevAd:Lcom/mobclix/android/sdk/MobclixCreative;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative;->onPause()V

    .line 285
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-boolean v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->rotate:Z

    if-eqz v0, :cond_4

    .line 286
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    const-string v1, "flipRight"

    invoke-virtual {p0, v0, v1}, Lcom/mobclix/android/sdk/MobclixCreative;->setAnimationType(Landroid/widget/ViewFlipper;Ljava/lang/String;)V

    .line 288
    :cond_4
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixAdView;->showNext()V

    .line 290
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->type:Ljava/lang/String;

    const-string v1, "slider"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 291
    invoke-virtual {p0, v2}, Lcom/mobclix/android/sdk/MobclixCreative;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;

    invoke-virtual {v0}, Lcom/mobclix/android/sdk/MobclixCreative$SliderPage;->act()V

    .line 297
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    iget-object v0, v0, Lcom/mobclix/android/sdk/MobclixAdView;->listeners:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mobclix/android/sdk/MobclixAdViewListener;

    .line 298
    .local v6, listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    if-eqz v6, :cond_6

    .line 299
    iget-object v1, p0, Lcom/mobclix/android/sdk/MobclixCreative;->parentAdView:Lcom/mobclix/android/sdk/MobclixAdView;

    invoke-interface {v6, v1}, Lcom/mobclix/android/sdk/MobclixAdViewListener;->onSuccessfulLoad(Lcom/mobclix/android/sdk/MobclixAdView;)V

    goto :goto_1

    .line 292
    .end local v6           #listener:Lcom/mobclix/android/sdk/MobclixAdViewListener;
    :cond_7
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->numPages:I

    if-le v0, v3, :cond_5

    .line 293
    invoke-virtual {p0}, Lcom/mobclix/android/sdk/MobclixCreative;->onPause()V

    .line 294
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    .line 295
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative;->pageCycleTimer:Ljava/util/Timer;

    new-instance v1, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;

    invoke-direct {v1, p0}, Lcom/mobclix/android/sdk/MobclixCreative$PageCycleThread;-><init>(Lcom/mobclix/android/sdk/MobclixCreative;)V

    iget v2, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    int-to-long v2, v2

    iget v4, p0, Lcom/mobclix/android/sdk/MobclixCreative;->transitionTime:I

    int-to-long v4, v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    goto :goto_0
.end method

.method public setAnimationType(Landroid/widget/ViewFlipper;Ljava/lang/String;)V
    .locals 11
    .parameter "v"
    .parameter "transition"

    .prologue
    .line 307
    if-nez p2, :cond_1

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    const-string v2, "fade"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 311
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v2, 0x3f80

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 312
    .local v0, outAnim:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 344
    .local v1, inAnim:Landroid/view/animation/Animation;
    :goto_1
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 345
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 346
    invoke-virtual {p1, v0}, Landroid/widget/ViewFlipper;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 347
    invoke-virtual {p1, v1}, Landroid/widget/ViewFlipper;->setInAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 313
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_2
    const-string v2, "slideRight"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 314
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/high16 v4, 0x3f80

    .line 315
    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    .line 314
    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 316
    .restart local v0       #outAnim:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/high16 v3, -0x4080

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 317
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 316
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 318
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_3
    const-string v2, "slideLeft"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 319
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, -0x4080

    .line 320
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    move-object v2, v0

    .line 319
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 321
    .restart local v0       #outAnim:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/high16 v3, 0x3f80

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 322
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 321
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    goto :goto_1

    .line 323
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_4
    const-string v2, "slideUp"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 324
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 325
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/high16 v10, -0x4080

    move-object v2, v0

    .line 324
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 326
    .restart local v0       #outAnim:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 327
    const/4 v6, 0x2

    const/high16 v7, 0x3f80

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 326
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 328
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_5
    const-string v2, "slideDown"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 329
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    .line 330
    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x2

    const/high16 v10, 0x3f80

    move-object v2, v0

    .line 329
    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 331
    .restart local v0       #outAnim:Landroid/view/animation/Animation;
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 332
    const/4 v6, 0x2

    const/high16 v7, -0x4080

    const/4 v8, 0x2

    const/4 v9, 0x0

    .line 331
    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    goto/16 :goto_1

    .line 333
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_6
    const-string v2, "flipRight"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 334
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

    .line 335
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

    .line 336
    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto/16 :goto_1

    .line 337
    .end local v0           #outAnim:Landroid/view/animation/Animation;
    .end local v1           #inAnim:Landroid/view/animation/Animation;
    :cond_7
    const-string v2, "flipLeft"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 338
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

    .line 339
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

    .line 340
    .restart local v1       #inAnim:Landroid/view/animation/Animation;
    const-wide/16 v2, 0x12c

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartOffset(J)V

    goto/16 :goto_1
.end method
