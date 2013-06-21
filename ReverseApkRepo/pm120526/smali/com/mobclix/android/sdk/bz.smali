.class final Lcom/mobclix/android/sdk/bz;
.super Ljava/lang/Object;


# instance fields
.field a:Lorg/json/JSONArray;

.field b:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mobclix/android/sdk/bz;->b:I

    iput p2, p0, Lcom/mobclix/android/sdk/bz;->b:I

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "creatives"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iput-object v0, p0, Lcom/mobclix/android/sdk/bz;->a:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method final a()Lorg/json/JSONObject;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/bz;->a:Lorg/json/JSONArray;

    iget v1, p0, Lcom/mobclix/android/sdk/bz;->b:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method
