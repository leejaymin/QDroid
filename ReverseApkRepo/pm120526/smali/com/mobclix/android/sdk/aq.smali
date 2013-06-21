.class public abstract Lcom/mobclix/android/sdk/aq;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/mobclix/android/sdk/aq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/mobclix/android/sdk/aq;
    .locals 2

    sget-object v0, Lcom/mobclix/android/sdk/aq;->a:Lcom/mobclix/android/sdk/aq;

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    const-string v0, "com.mobclix.android.sdk.MobclixContactsSdk3_4"

    :goto_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/mobclix/android/sdk/aq;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mobclix/android/sdk/aq;

    sput-object v0, Lcom/mobclix/android/sdk/aq;->a:Lcom/mobclix/android/sdk/aq;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    sget-object v0, Lcom/mobclix/android/sdk/aq;->a:Lcom/mobclix/android/sdk/aq;

    return-object v0

    :cond_1
    const-string v0, "com.mobclix.android.sdk.MobclixContactsSdk5"

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public abstract b()Landroid/content/Intent;
.end method

.method public abstract c()Landroid/content/Intent;
.end method

.method public abstract d()Lorg/json/JSONObject;
.end method
