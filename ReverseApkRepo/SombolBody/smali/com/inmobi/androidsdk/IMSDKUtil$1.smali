.class Lcom/inmobi/androidsdk/IMSDKUtil$1;
.super Ljava/lang/Thread;
.source "IMSDKUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/androidsdk/IMSDKUtil;->sendAppTrackerConversion(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroid/content/Context;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/IMSDKUtil$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/inmobi/androidsdk/IMSDKUtil$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/inmobi/androidsdk/IMSDKUtil$1;->c:Landroid/content/SharedPreferences$Editor;

    .line 77
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 81
    new-instance v0, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;

    .line 82
    iget-object v1, p0, Lcom/inmobi/androidsdk/IMSDKUtil$1;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/inmobi/androidsdk/IMSDKUtil$1;->b:Ljava/lang/String;

    .line 81
    invoke-direct {v0, v1, v2}, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 83
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/impl/InMobiAndroidTrackerHTTPRequest;->setupConnection()Z

    move-result v0

    .line 84
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 85
    const-string v1, "InMobiAndroidSDK_3.5.4"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ping Status: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    :cond_0
    if-eqz v0, :cond_1

    .line 88
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMSDKUtil$1;->c:Landroid/content/SharedPreferences$Editor;

    const-string v1, "InMobi_Prefs_key"

    const-string v2, "InMobiAdCampaign"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    iget-object v0, p0, Lcom/inmobi/androidsdk/IMSDKUtil$1;->c:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 91
    :cond_1
    return-void
.end method
