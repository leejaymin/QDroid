.class public Lcom/clearandvalid/soundboard/mrtfree/MrTFree;
.super Landroid/app/Activity;
.source "MrTFree.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/admob/android/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clearandvalid/soundboard/mrtfree/MrTFree$MrTLunarLanderListener;
    }
.end annotation


# instance fields
.field private a:Landroid/media/MediaPlayer;

.field private b:Landroid/media/MediaPlayer;

.field private c:Landroid/media/MediaPlayer;

.field private d:Landroid/media/MediaPlayer;

.field private e:Landroid/media/MediaPlayer;

.field private example_adview:Lcom/admob/android/ads/AdView;

.field private f:Landroid/media/MediaPlayer;

.field private g:Landroid/media/MediaPlayer;

.field private h:Landroid/media/MediaPlayer;

.field private i:Landroid/media/MediaPlayer;

.field private j:Landroid/media/MediaPlayer;

.field private k:Landroid/media/MediaPlayer;

.field private l:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 104
    const/4 v0, 0x0

    .line 105
    .local v0, mp:Landroid/media/MediaPlayer;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 149
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 150
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 152
    new-instance v1, Lcom/clearandvalid/soundboard/mrtfree/MrTFree$1;

    invoke-direct {v1, p0}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree$1;-><init>(Lcom/clearandvalid/soundboard/mrtfree/MrTFree;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 187
    return-void

    .line 109
    :pswitch_0
    const/high16 v1, 0x7f04

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 110
    goto :goto_0

    .line 112
    :pswitch_1
    const v1, 0x7f040001

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 113
    goto :goto_0

    .line 115
    :pswitch_2
    const v1, 0x7f040002

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 116
    goto :goto_0

    .line 118
    :pswitch_3
    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 119
    goto :goto_0

    .line 121
    :pswitch_4
    const v1, 0x7f040004

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 122
    goto :goto_0

    .line 124
    :pswitch_5
    const v1, 0x7f040005

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 125
    goto :goto_0

    .line 127
    :pswitch_6
    const v1, 0x7f040006

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 128
    goto :goto_0

    .line 130
    :pswitch_7
    const v1, 0x7f040007

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 131
    goto :goto_0

    .line 133
    :pswitch_8
    const v1, 0x7f040008

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    .line 134
    goto :goto_0

    .line 136
    :pswitch_9
    const v1, 0x7f040009

    invoke-static {p0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    goto :goto_0

    .line 105
    nop

    :pswitch_data_0
    .packed-switch 0x7f080001
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    const v11, 0x7f030001

    .line 31
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0, v11}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->setContentView(I)V

    .line 51
    invoke-virtual {p0, v11}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->setContentView(I)V

    .line 53
    const v11, 0x7f080001

    invoke-virtual {p0, v11}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 54
    .local v1, button0:Landroid/view/View;
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v11, 0x7f080002

    invoke-virtual {p0, v11}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 56
    .local v2, button1:Landroid/view/View;
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v11, 0x7f080003

    invoke-virtual {p0, v11}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 58
    .local v3, button2:Landroid/view/View;
    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v11, 0x7f080004

    invoke-virtual {p0, v11}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 60
    .local v4, button3:Landroid/view/View;
    invoke-virtual {v4, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v11, 0x7f080005

    invoke-virtual {p0, v11}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 62
    .local v5, button4:Landroid/view/View;
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    const v11, 0x7f080006

    invoke-virtual {p0, v11}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 64
    .local v6, button5:Landroid/view/View;
    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v11, 0x7f080007

    invoke-virtual {p0, v11}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 66
    .local v7, button6:Landroid/view/View;
    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v11, 0x7f080008

    invoke-virtual {p0, v11}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 68
    .local v8, button7:Landroid/view/View;
    invoke-virtual {v8, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v11, 0x7f080009

    invoke-virtual {p0, v11}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 70
    .local v9, button8:Landroid/view/View;
    invoke-virtual {v9, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v11, 0x7f08000a

    invoke-virtual {p0, v11}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 72
    .local v10, button9:Landroid/view/View;
    invoke-virtual {v10, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    const/high16 v11, 0x7f08

    invoke-virtual {p0, v11}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/admob/android/ads/AdView;

    iput-object v11, p0, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->example_adview:Lcom/admob/android/ads/AdView;

    .line 91
    iget-object v11, p0, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->example_adview:Lcom/admob/android/ads/AdView;

    new-instance v12, Lcom/clearandvalid/soundboard/mrtfree/MrTFree$MrTLunarLanderListener;

    const/4 v13, 0x0

    invoke-direct {v12, p0, v13}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree$MrTLunarLanderListener;-><init>(Lcom/clearandvalid/soundboard/mrtfree/MrTFree;Lcom/clearandvalid/soundboard/mrtfree/MrTFree$MrTLunarLanderListener;)V

    invoke-virtual {v11, v12}, Lcom/admob/android/ads/AdView;->setAdListener(Lcom/admob/android/ads/AdListener;)V

    .line 93
    iget-object v11, p0, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->example_adview:Lcom/admob/android/ads/AdView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/admob/android/ads/AdView;->setVisibility(I)V

    .line 94
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v11, 0x0

    const/high16 v12, 0x3f80

    invoke-direct {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 95
    .local v0, animation:Landroid/view/animation/AlphaAnimation;
    const-wide/16 v11, 0x190

    invoke-virtual {v0, v11, v12}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 96
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 97
    new-instance v11, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v11}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v11}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 98
    iget-object v11, p0, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->example_adview:Lcom/admob/android/ads/AdView;

    invoke-virtual {v11, v0}, Lcom/admob/android/ads/AdView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 100
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 194
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 196
    invoke-virtual {p0}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 197
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f030002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 207
    const/4 v1, 0x1

    return v1
.end method

.method public onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 286
    const-string v0, "Lunar"

    const-string v1, "onFailedToReceiveAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    return-void
.end method

.method public onFailedToReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 294
    const-string v0, "Lunar"

    const-string v1, "onFailedToReceiveRefreshedAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    .line 218
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 230
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 221
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/clearandvalid/soundboard/mrtfree/About;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->startActivity(Landroid/content/Intent;)V

    move v0, v2

    .line 222
    goto :goto_0

    .line 225
    :pswitch_1
    invoke-virtual {p0}, Lcom/clearandvalid/soundboard/mrtfree/MrTFree;->finish()V

    move v0, v2

    .line 226
    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x7f08000b
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 302
    const-string v0, "Lunar"

    const-string v1, "onReceiveAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    return-void
.end method

.method public onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 2
    .parameter "adView"

    .prologue
    .line 310
    const-string v0, "Lunar"

    const-string v1, "onReceiveRefreshedAd"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    return-void
.end method
