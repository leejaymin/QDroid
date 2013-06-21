.class public interface abstract Lcom/wolfram/alpha/WABanner;
.super Ljava/lang/Object;
.source "WABanner.java"

# interfaces
.implements Lcom/wolfram/alpha/visitor/Visitable;


# virtual methods
.method public abstract acquireWeatherBannerImage()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/wolfram/alpha/WAException;
        }
    .end annotation
.end method

.method public abstract getContents()[Lcom/wolfram/alpha/visitor/Visitable;
.end method

.method public abstract getWeatherBannerTitle()Ljava/lang/String;
.end method

.method public abstract getweatherBannerPodstates()[Lcom/wolfram/alpha/WAPodState;
.end method
