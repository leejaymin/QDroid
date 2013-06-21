.class Lcom/mobclix/android/sdk/Mobclix$2;
.super Ljava/util/TimerTask;
.source "Mobclix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobclix/android/sdk/Mobclix;->updateLocation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobclix/android/sdk/Mobclix;


# direct methods
.method constructor <init>(Lcom/mobclix/android/sdk/Mobclix;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mobclix/android/sdk/Mobclix$2;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    .line 406
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$2;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->locationListener:Landroid/location/LocationListener;
    invoke-static {v0}, Lcom/mobclix/android/sdk/Mobclix;->access$42(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/LocationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$2;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->locationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/mobclix/android/sdk/Mobclix;->access$40(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mobclix/android/sdk/Mobclix$2;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    #getter for: Lcom/mobclix/android/sdk/Mobclix;->locationListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/mobclix/android/sdk/Mobclix;->access$42(Lcom/mobclix/android/sdk/Mobclix;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 412
    :goto_0
    iget-object v0, p0, Lcom/mobclix/android/sdk/Mobclix$2;->this$0:Lcom/mobclix/android/sdk/Mobclix;

    const/4 v1, 0x0

    #setter for: Lcom/mobclix/android/sdk/Mobclix;->locationListener:Landroid/location/LocationListener;
    invoke-static {v0, v1}, Lcom/mobclix/android/sdk/Mobclix;->access$41(Lcom/mobclix/android/sdk/Mobclix;Landroid/location/LocationListener;)V

    .line 414
    :cond_0
    return-void

    .line 411
    :catch_0
    move-exception v0

    goto :goto_0
.end method
