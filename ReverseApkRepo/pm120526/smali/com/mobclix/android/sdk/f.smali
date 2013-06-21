.class final Lcom/mobclix/android/sdk/f;
.super Lcom/mobclix/android/sdk/cl;


# instance fields
.field final synthetic a:Lcom/mobclix/android/sdk/e;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/e;)V
    .locals 0

    iput-object p1, p0, Lcom/mobclix/android/sdk/f;->a:Lcom/mobclix/android/sdk/e;

    invoke-direct {p0}, Lcom/mobclix/android/sdk/cl;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/location/Location;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/f;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/e;->a(Lcom/mobclix/android/sdk/e;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mobclix/android/sdk/f;->a:Lcom/mobclix/android/sdk/e;

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/e;->b(Lcom/mobclix/android/sdk/e;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
