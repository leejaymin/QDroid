.class public interface abstract Lcom/wolfram/alpha/WAQueryParameters;
.super Ljava/lang/Object;
.source "WAQueryParameters.java"


# virtual methods
.method public abstract addAssumption(Ljava/lang/String;)V
.end method

.method public abstract addExcludePodID(Ljava/lang/String;)V
.end method

.method public abstract addFormat(Ljava/lang/String;)V
.end method

.method public abstract addIncludePodID(Ljava/lang/String;)V
.end method

.method public abstract addPodIndex(I)V
.end method

.method public abstract addPodScanner(Ljava/lang/String;)V
.end method

.method public abstract addPodState(Lcom/wolfram/alpha/WAPodState;)V
.end method

.method public abstract addPodState(Ljava/lang/String;)V
.end method

.method public abstract addPodState(Ljava/lang/String;J)V
.end method

.method public abstract addPodTitle(Ljava/lang/String;)V
.end method

.method public abstract clearAssumptions()V
.end method

.method public abstract clearExcludePodIDs()V
.end method

.method public abstract clearIncludePodIDs()V
.end method

.method public abstract clearPodIndexes()V
.end method

.method public abstract clearPodScanners()V
.end method

.method public abstract clearPodStates()V
.end method

.method public abstract clearPodTitles()V
.end method

.method public abstract fillFromURL(Ljava/lang/String;)V
.end method

.method public abstract getAssumptions()[Ljava/lang/String;
.end method

.method public abstract getAsync()D
.end method

.method public abstract getBanners()Ljava/lang/String;
.end method

.method public abstract getCountryCode()Ljava/lang/String;
.end method

.method public abstract getCurrency()Ljava/lang/String;
.end method

.method public abstract getExcludePodIDs()[Ljava/lang/String;
.end method

.method public abstract getExtraParams()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getFormatTimeout()D
.end method

.method public abstract getFormats()[Ljava/lang/String;
.end method

.method public abstract getGeneralizationInput()Ljava/lang/String;
.end method

.method public abstract getIP()Ljava/lang/String;
.end method

.method public abstract getIncludePodIDs()[Ljava/lang/String;
.end method

.method public abstract getInput()Ljava/lang/String;
.end method

.method public abstract getLatLong()[D
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract getMagnification()D
.end method

.method public abstract getMaxWidth()I
.end method

.method public abstract getParameters()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPlotWidth()I
.end method

.method public abstract getPodIndexes()[I
.end method

.method public abstract getPodScanners()[Ljava/lang/String;
.end method

.method public abstract getPodStates()[Lcom/wolfram/alpha/WAPodState;
.end method

.method public abstract getPodTimeout()D
.end method

.method public abstract getPodTitles()[Ljava/lang/String;
.end method

.method public abstract getScanTimeout()D
.end method

.method public abstract getWidth()I
.end method

.method public abstract isAllowTranslation()Ljava/lang/Boolean;
.end method

.method public abstract isMetric()Ljava/lang/Boolean;
.end method

.method public abstract isReinterpret()Z
.end method

.method public abstract isRelatedLinks()Z
.end method

.method public abstract setAllowTranslation(Ljava/lang/Boolean;)V
.end method

.method public abstract setAsync(D)V
.end method

.method public abstract setBanners(Ljava/lang/String;)V
.end method

.method public abstract setCountryCode(Ljava/lang/String;)V
.end method

.method public abstract setCurrency(Ljava/lang/String;)V
.end method

.method public abstract setFormatTimeout(D)V
.end method

.method public abstract setGeneralizationInput(Ljava/lang/String;)V
.end method

.method public abstract setIP(Ljava/lang/String;)V
.end method

.method public abstract setInput(Ljava/lang/String;)V
.end method

.method public abstract setLatLong(Ljava/lang/String;)V
.end method

.method public abstract setLatitude(D)V
.end method

.method public abstract setLocation(Ljava/lang/String;)V
.end method

.method public abstract setLongitude(D)V
.end method

.method public abstract setMagnification(D)V
.end method

.method public abstract setMaxWidth(I)V
.end method

.method public abstract setMetric(Ljava/lang/Boolean;)V
.end method

.method public abstract setPlotWidth(I)V
.end method

.method public abstract setPodTimeout(D)V
.end method

.method public abstract setReinterpret(Z)V
.end method

.method public abstract setRelatedLinks(Z)V
.end method

.method public abstract setScanTimeout(D)V
.end method

.method public abstract setSignature(Ljava/lang/String;)V
.end method

.method public abstract setWidth(I)V
.end method

.method public abstract toWebsiteURL()Ljava/lang/String;
.end method
