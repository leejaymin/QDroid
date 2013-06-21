.class public Lcom/adobe/omniture/AppMeasurementWrapperAirExtension;
.super Ljava/lang/Object;
.source "AppMeasurementWrapperAirExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1
    .parameter "extId"

    .prologue
    .line 11
    new-instance v0, Lcom/adobe/omniture/AppMeasurementWrapperExtensionContext;

    invoke-direct {v0}, Lcom/adobe/omniture/AppMeasurementWrapperExtensionContext;-><init>()V

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 32
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 22
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :goto_0
    return-void

    .line 23
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 17
    return-void
.end method
