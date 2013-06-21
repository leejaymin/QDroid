.class Lcom/mobclix/android/sdk/MobclixCreative$Page;
.super Landroid/widget/RelativeLayout;
.source "MobclixCreative.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobclix/android/sdk/MobclixCreative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Page"
.end annotation


# instance fields
.field protected alignmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected layer:I

.field protected parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

.field protected resourceId:I

.field final synthetic this$0:Lcom/mobclix/android/sdk/MobclixCreative;

.field protected type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/MobclixCreative;Lcom/mobclix/android/sdk/MobclixCreative;)V
    .locals 3
    .parameter
    .parameter "c"

    .prologue
    .line 374
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->this$0:Lcom/mobclix/android/sdk/MobclixCreative;

    .line 369
    invoke-virtual {p2}, Lcom/mobclix/android/sdk/MobclixCreative;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 364
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->alignmentMap:Ljava/util/HashMap;

    .line 370
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->alignmentMap:Ljava/util/HashMap;

    const-string v1, "center"

    const/16 v2, 0x11

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->alignmentMap:Ljava/util/HashMap;

    const-string v1, "left"

    const/16 v2, 0x13

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->alignmentMap:Ljava/util/HashMap;

    const-string v1, "right"

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iput-object p2, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    return-void
.end method


# virtual methods
.method public getColorFromJSON(Lorg/json/JSONObject;)I
    .locals 5
    .parameter "c"

    .prologue
    .line 386
    :try_start_0
    const-string v1, "a"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "r"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v3, "g"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "b"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/Color;->argb(IIII)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 388
    :goto_0
    return v1

    .line 387
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 388
    .local v0, e:Lorg/json/JSONException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 381
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->layer:I

    return v0
.end method

.method public getParentCreative()Lcom/mobclix/android/sdk/MobclixCreative;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->parentCreative:Lcom/mobclix/android/sdk/MobclixCreative;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->resourceId:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setLayer(I)V
    .locals 0
    .parameter "l"

    .prologue
    .line 378
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->layer:I

    return-void
.end method

.method public setResourceId(I)V
    .locals 0
    .parameter "r"

    .prologue
    .line 377
    iput p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->resourceId:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "t"

    .prologue
    .line 379
    iput-object p1, p0, Lcom/mobclix/android/sdk/MobclixCreative$Page;->type:Ljava/lang/String;

    return-void
.end method
