.class Lcom/inmobi/androidsdk/ai/container/IMWebView$1;
.super Landroid/os/Handler;
.source "IMWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/androidsdk/ai/container/IMWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic b:[I


# instance fields
.field final synthetic a:Lcom/inmobi/androidsdk/ai/container/IMWebView;


# direct methods
.method constructor <init>(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    .line 696
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static synthetic a()[I
    .locals 3

    .prologue
    .line 696
    sget-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->b:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->values()[Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->HIDDEN:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->LOADING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->RESIZED:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->b:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 701
    sget-boolean v0, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 702
    const-string v0, "InMobiAndroidSDK_3.5.4"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IMWebView->handleMessag: msg:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 703
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 702
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 706
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 992
    :cond_1
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 993
    :goto_1
    return-void

    .line 708
    :pswitch_1
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_1

    .line 709
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;->onExpandClose()Z

    goto :goto_0

    .line 731
    :pswitch_2
    invoke-static {}, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a()[I

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :pswitch_3
    goto :goto_0

    .line 749
    :pswitch_4
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsInterstitialAd:Z

    if-eqz v0, :cond_2

    .line 752
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/app/Activity;)V

    goto :goto_0

    .line 737
    :pswitch_5
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/app/Activity;)V

    .line 738
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iput-boolean v4, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mIsExpandUrlValid:Z

    goto :goto_0

    .line 741
    :pswitch_6
    const-string v0, "window.mraidview.fireErrorEvent(\"Current state is not expanded or default\", \"close\")"

    .line 744
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto :goto_0

    .line 754
    :cond_2
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->hide()V

    goto :goto_0

    .line 762
    :pswitch_7
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    sget-object v1, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->HIDDEN:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setState(Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;)V

    goto :goto_0

    .line 767
    :pswitch_8
    const-string v0, "window.mraidview.fireChangeEvent({ state: \'default\' });"

    .line 768
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v0, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->setVisibility(I)V

    goto :goto_0

    .line 775
    :pswitch_9
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    move-result-object v0

    sget-object v2, Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;->EXPANDING:Lcom/inmobi/androidsdk/ai/container/IMWebView$ViewState;

    if-ne v0, v2, :cond_1

    .line 776
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Landroid/os/Bundle;)V

    goto :goto_0

    .line 785
    :pswitch_a
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->playAudioImpl(Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_0

    .line 791
    :pswitch_b
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->playVideoImpl(Landroid/os/Bundle;Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 792
    :catch_0
    move-exception v0

    .line 793
    sget-boolean v1, Lcom/inmobi/androidsdk/impl/Constants;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 794
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 799
    :pswitch_c
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Ljava/util/Hashtable;

    move-result-object v0

    .line 800
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 799
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 801
    if-eqz v0, :cond_1

    .line 802
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->pause()V

    goto/16 :goto_0

    .line 808
    :pswitch_d
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Ljava/util/Hashtable;

    move-result-object v0

    .line 809
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 808
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 810
    if-eqz v0, :cond_1

    .line 811
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->mute()V

    goto/16 :goto_0

    .line 817
    :pswitch_e
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Ljava/util/Hashtable;

    move-result-object v0

    .line 818
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 817
    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 819
    if-eqz v0, :cond_1

    .line 820
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->unMute()V

    goto/16 :goto_0

    .line 826
    :pswitch_f
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->c(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Ljava/util/Hashtable;

    move-result-object v0

    .line 827
    const-string v2, "aplayerref"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 826
    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 828
    if-eqz v0, :cond_1

    .line 829
    const-string v2, "vol"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setVolume(I)V

    goto/16 :goto_0

    .line 835
    :pswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 836
    const-string v2, "seekaudio"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->seekPlayer(I)V

    goto/16 :goto_0

    .line 842
    :pswitch_11
    const-string v0, "pid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 843
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v0

    .line 847
    if-nez v0, :cond_3

    .line 848
    const-string v0, "window.mraidview.fireErrorEvent(\"Invalid property ID\", \"pauseVideo\")"

    .line 860
    :goto_2
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 850
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/androidsdk/impl/Constants$playerState;->PLAYING:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-eq v1, v2, :cond_4

    .line 851
    const-string v0, "window.mraidview.fireErrorEvent(\"Invalid player state\", \"pauseVideo\")"

    goto :goto_2

    .line 856
    :cond_4
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->pause()V

    goto/16 :goto_1

    .line 864
    :pswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 865
    invoke-virtual {v0, v4}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->releasePlayer(Z)V

    goto/16 :goto_0

    .line 870
    :pswitch_13
    const-string v0, "pid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 871
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v1

    .line 874
    if-nez v1, :cond_5

    .line 875
    const-string v0, "window.mraidview.fireErrorEvent(\"Invalid property ID\", \"hideVideo\")"

    .line 897
    :goto_3
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 877
    :cond_5
    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v2

    sget-object v3, Lcom/inmobi/androidsdk/impl/Constants$playerState;->RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-ne v2, v3, :cond_6

    .line 878
    const-string v0, "window.mraidview.fireErrorEvent(\"Invalid player state\", \"hideVideo\")"

    goto :goto_3

    .line 883
    :cond_6
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->hide()V

    .line 893
    invoke-virtual {v1, v4}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->releasePlayer(Z)V

    goto/16 :goto_1

    .line 901
    :pswitch_14
    const-string v0, "pid"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 902
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Ljava/lang/String;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v1

    .line 905
    if-nez v1, :cond_7

    .line 906
    const-string v0, "window.mraidview.fireErrorEvent(\"Invalid property ID\", \"showVideo\")"

    .line 936
    :goto_4
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 908
    :cond_7
    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getState()Lcom/inmobi/androidsdk/impl/Constants$playerState;

    move-result-object v2

    sget-object v3, Lcom/inmobi/androidsdk/impl/Constants$playerState;->RELEASED:Lcom/inmobi/androidsdk/impl/Constants$playerState;

    if-eq v2, v3, :cond_8

    .line 909
    const-string v0, "window.mraidview.fireErrorEvent(\"Invalid player state\", \"showVideo\")"

    goto :goto_4

    .line 913
    :cond_8
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 914
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->e(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getPropertyID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 916
    const-string v0, "window.mraidview.fireErrorEvent(\"Show failed. There is already a video playing\", \"showVideo\")"

    goto :goto_4

    .line 923
    :cond_9
    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->d(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Ljava/util/Hashtable;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 927
    const-string v2, "expand_url"

    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getMediaURL()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    const-string v2, "expand_dimensions"

    .line 929
    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getPlayDimensions()Lcom/inmobi/androidsdk/ai/controller/JSController$Dimensions;

    move-result-object v3

    .line 928
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 930
    const-string v2, "player_properties"

    .line 931
    invoke-virtual {v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->getProperties()Lcom/inmobi/androidsdk/ai/controller/JSController$PlayerProperties;

    move-result-object v1

    .line 930
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 932
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v2, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->b(Lcom/inmobi/androidsdk/ai/container/IMWebView;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->playVideoImpl(Landroid/os/Bundle;Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 940
    :pswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 941
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->mute()V

    goto/16 :goto_0

    .line 946
    :pswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 947
    invoke-virtual {v0}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->unMute()V

    goto/16 :goto_0

    .line 952
    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 953
    const-string v2, "seek"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->seekPlayer(I)V

    goto/16 :goto_0

    .line 958
    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;

    .line 959
    const-string v2, "volume"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/androidsdk/ai/controller/util/AVPlayer;->setVolume(I)V

    goto/16 :goto_0

    .line 964
    :pswitch_19
    const-string v0, "message"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 965
    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 966
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "window.mraidview.fireErrorEvent(\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 967
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\", \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 966
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 968
    iget-object v1, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-virtual {v1, v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->injectJavaScript(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 972
    :pswitch_1a
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0, v4}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Z)V

    goto/16 :goto_0

    .line 976
    :pswitch_1b
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    if-eqz v0, :cond_1

    .line 977
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/androidsdk/ai/container/IMWebView;->mListener:Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;

    invoke-interface {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView$IMWebViewListener;->onDismissAdScreen()Z

    goto/16 :goto_0

    .line 982
    :pswitch_1c
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->f(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    goto/16 :goto_0

    .line 985
    :pswitch_1d
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    invoke-static {v0}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->g(Lcom/inmobi/androidsdk/ai/container/IMWebView;)V

    goto/16 :goto_0

    .line 988
    :pswitch_1e
    iget-object v0, p0, Lcom/inmobi/androidsdk/ai/container/IMWebView$1;->a:Lcom/inmobi/androidsdk/ai/container/IMWebView;

    const-string v2, "expand_url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/androidsdk/ai/container/IMWebView;->a(Lcom/inmobi/androidsdk/ai/container/IMWebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 706
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_1
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_19
        :pswitch_1a
        :pswitch_1c
        :pswitch_c
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_18
        :pswitch_17
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_1b
        :pswitch_1d
        :pswitch_1e
    .end packed-switch

    .line 731
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method