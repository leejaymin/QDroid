.class Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors$1;
.super Ljava/lang/Thread;
.source "adsenseColors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;


# direct methods
.method constructor <init>(Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors$1;->this$0:Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    .line 38
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 39
    :try_start_0
    iget-object v1, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors$1;->this$0:Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors$1;->this$0:Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;

    #getter for: Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->url:Ljava/lang/String;
    invoke-static {v3}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->access$0(Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "?r="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->sendXMLRequest(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    #calls: Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->getAdsColor(Lorg/w3c/dom/Element;)V
    invoke-static {v1, v2}, Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;->access$1(Lcom/nix/apps/androlib/wallpapers/datamanager/adsenseColors;Lorg/w3c/dom/Element;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 42
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
