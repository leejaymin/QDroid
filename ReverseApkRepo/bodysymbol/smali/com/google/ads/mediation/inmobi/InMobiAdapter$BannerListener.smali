.class Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;
.super Ljava/lang/Object;
.source "InMobiAdapter.java"

# interfaces
.implements Lcom/inmobi/androidsdk/IMAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/mediation/inmobi/InMobiAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BannerListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;


# direct methods
.method private constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;Lcom/google/ads/mediation/inmobi/InMobiAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;-><init>(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)V

    return-void
.end method


# virtual methods
.method public onAdRequestCompleted(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$200(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onReceivedAd(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 252
    return-void
.end method

.method public onAdRequestFailed(Lcom/inmobi/androidsdk/IMAdView;Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;)V
    .locals 3
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 256
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$1;->$SwitchMap$com$inmobi$androidsdk$IMAdRequest$ErrorCode:[I

    invoke-virtual {p2}, Lcom/inmobi/androidsdk/IMAdRequest$ErrorCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 273
    :goto_0
    return-void

    .line 258
    :pswitch_0
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$200(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->INTERNAL_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_0

    .line 262
    :pswitch_1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$200(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->INVALID_REQUEST:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_0

    .line 266
    :pswitch_2
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$200(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NETWORK_ERROR:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_0

    .line 270
    :pswitch_3
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$200(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    sget-object v2, Lcom/google/ads/AdRequest$ErrorCode;->NO_FILL:Lcom/google/ads/AdRequest$ErrorCode;

    invoke-interface {v0, v1, v2}, Lcom/google/ads/mediation/MediationBannerListener;->onFailedToReceiveAd(Lcom/google/ads/mediation/MediationBannerAdapter;Lcom/google/ads/AdRequest$ErrorCode;)V

    goto :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onDismissAdScreen(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$200(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onDismissScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 278
    return-void
.end method

.method public onLeaveApplication(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$200(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 289
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$200(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 290
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$200(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onLeaveApplication(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 291
    return-void
.end method

.method public onShowAdScreen(Lcom/inmobi/androidsdk/IMAdView;)V
    .locals 2
    .parameter "arg0"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$200(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onClick(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 283
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    #getter for: Lcom/google/ads/mediation/inmobi/InMobiAdapter;->bannerListener:Lcom/google/ads/mediation/MediationBannerListener;
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/InMobiAdapter;->access$200(Lcom/google/ads/mediation/inmobi/InMobiAdapter;)Lcom/google/ads/mediation/MediationBannerListener;

    move-result-object v0

    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/InMobiAdapter$BannerListener;->this$0:Lcom/google/ads/mediation/inmobi/InMobiAdapter;

    invoke-interface {v0, v1}, Lcom/google/ads/mediation/MediationBannerListener;->onPresentScreen(Lcom/google/ads/mediation/MediationBannerAdapter;)V

    .line 284
    return-void
.end method
