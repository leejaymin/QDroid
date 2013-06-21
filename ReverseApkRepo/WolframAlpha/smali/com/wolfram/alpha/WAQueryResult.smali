.class public interface abstract Lcom/wolfram/alpha/WAQueryResult;
.super Ljava/lang/Object;
.source "WAQueryResult.java"

# interfaces
.implements Lcom/wolfram/alpha/visitor/Visitable;


# virtual methods
.method public abstract acquireImages()V
.end method

.method public abstract finishAsync()V
.end method

.method public abstract getAPIVersion()Ljava/lang/String;
.end method

.method public abstract getAssumptions()[Lcom/wolfram/alpha/WAAssumption;
.end method

.method public abstract getBanners()[Lcom/wolfram/alpha/WABanner;
.end method

.method public abstract getComputationView()Z
.end method

.method public abstract getDataTypes()[Ljava/lang/String;
.end method

.method public abstract getDidYouMeans()[Ljava/lang/String;
.end method

.method public abstract getErrorCode()I
.end method

.method public abstract getErrorMessage()Ljava/lang/String;
.end method

.method public abstract getExamplePage()Lcom/wolfram/alpha/WAExamplePage;
.end method

.method public abstract getFutureTopic()Lcom/wolfram/alpha/WAFutureTopic;
.end method

.method public abstract getGeneralization()Lcom/wolfram/alpha/WAGeneralization;
.end method

.method public abstract getGeneralizationViewPosition()I
.end method

.method public abstract getLanguageMessage()[Ljava/lang/String;
.end method

.method public abstract getNumPods()I
.end method

.method public abstract getParseTiming()D
.end method

.method public abstract getPods()[Lcom/wolfram/alpha/WAPod;
.end method

.method public abstract getQuery()Lcom/wolfram/alpha/WAQuery;
.end method

.method public abstract getRecalculateURL()Ljava/lang/String;
.end method

.method public abstract getRelatedExamples()[Lcom/wolfram/alpha/WARelatedExample;
.end method

.method public abstract getRelatedLinks()[Lcom/wolfram/alpha/WARelatedLink;
.end method

.method public abstract getRelatedQueries()[Ljava/lang/String;
.end method

.method public abstract getRelatedQueriesURL()Ljava/lang/String;
.end method

.method public abstract getSources()[Lcom/wolfram/alpha/WASourceInfo;
.end method

.method public abstract getTimedoutScanners()[Ljava/lang/String;
.end method

.method public abstract getTiming()D
.end method

.method public abstract getTips()[Ljava/lang/String;
.end method

.method public abstract getUserData()Ljava/lang/Object;
.end method

.method public abstract getWarnings()[Lcom/wolfram/alpha/WAWarning;
.end method

.method public abstract getXML()Ljava/lang/String;
.end method

.method public abstract isError()Z
.end method

.method public abstract isSuccess()Z
.end method

.method public abstract mergeBannerStateResult(Lcom/wolfram/alpha/WAQueryResult;)V
.end method

.method public abstract mergeGeneralizationResult(Lcom/wolfram/alpha/WAQueryResult;)V
.end method

.method public abstract mergePodstateResult(Lcom/wolfram/alpha/WAQueryResult;)V
.end method

.method public abstract mergeRecalculateResult(Lcom/wolfram/alpha/WAQueryResult;)V
.end method

.method public abstract mergeRelatedQueriesResult(Lcom/wolfram/alpha/WAQueryResult;)V
.end method

.method public abstract release()V
.end method

.method public abstract setComputationView(Z)V
.end method

.method public abstract setGeneralizationViewPosition(I)V
.end method

.method public abstract setUserData(Ljava/lang/Object;)V
.end method
