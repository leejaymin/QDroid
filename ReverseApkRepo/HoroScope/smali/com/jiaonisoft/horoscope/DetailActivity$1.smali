.class Lcom/jiaonisoft/horoscope/DetailActivity$1;
.super Ljava/lang/Object;
.source "DetailActivity.java"

# interfaces
.implements Lcom/admob/android/ads/AdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiaonisoft/horoscope/DetailActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jiaonisoft/horoscope/DetailActivity;


# direct methods
.method constructor <init>(Lcom/jiaonisoft/horoscope/DetailActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/jiaonisoft/horoscope/DetailActivity$1;->this$0:Lcom/jiaonisoft/horoscope/DetailActivity;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailedToReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 80
    return-void
.end method

.method public onFailedToReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 84
    return-void
.end method

.method public onReceiveAd(Lcom/admob/android/ads/AdView;)V
    .locals 7
    .parameter "arg0"

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x3f80

    .line 87
    iget-object v0, p0, Lcom/jiaonisoft/horoscope/DetailActivity$1;->this$0:Lcom/jiaonisoft/horoscope/DetailActivity;

    #getter for: Lcom/jiaonisoft/horoscope/DetailActivity;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/jiaonisoft/horoscope/DetailActivity;->access$0(Lcom/jiaonisoft/horoscope/DetailActivity;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/jiaonisoft/horoscope/DetailActivity$1;->this$0:Lcom/jiaonisoft/horoscope/DetailActivity;

    #getter for: Lcom/jiaonisoft/horoscope/DetailActivity;->mNotifySoundID:I
    invoke-static {v1}, Lcom/jiaonisoft/horoscope/DetailActivity;->access$1(Lcom/jiaonisoft/horoscope/DetailActivity;)I

    move-result v1

    move v3, v2

    move v5, v4

    move v6, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 88
    return-void
.end method

.method public onReceiveRefreshedAd(Lcom/admob/android/ads/AdView;)V
    .locals 0
    .parameter "arg0"

    .prologue
    .line 92
    return-void
.end method
