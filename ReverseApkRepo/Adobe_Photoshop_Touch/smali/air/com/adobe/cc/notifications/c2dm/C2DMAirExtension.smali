.class public Lair/com/adobe/cc/notifications/c2dm/C2DMAirExtension;
.super Ljava/lang/Object;
.source "C2DMAirExtension.java"

# interfaces
.implements Lcom/adobe/fre/FREExtension;


# static fields
.field private static context:Lcom/adobe/fre/FREContext;

.field private static extensionInitialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMAirExtension;->context:Lcom/adobe/fre/FREContext;

    .line 10
    const/4 v0, 0x0

    sput-boolean v0, Lair/com/adobe/cc/notifications/c2dm/C2DMAirExtension;->extensionInitialized:Z

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Lcom/adobe/fre/FREContext;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMAirExtension;->context:Lcom/adobe/fre/FREContext;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lair/com/adobe/cc/notifications/c2dm/C2DMExtensionContext;

    invoke-direct {v0}, Lair/com/adobe/cc/notifications/c2dm/C2DMExtensionContext;-><init>()V

    sput-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMAirExtension;->context:Lcom/adobe/fre/FREContext;

    .line 24
    :cond_0
    sget-object v0, Lair/com/adobe/cc/notifications/c2dm/C2DMAirExtension;->context:Lcom/adobe/fre/FREContext;

    return-object v0
.end method

.method public static isExtensionInitialized()Z
    .locals 1

    .prologue
    .line 11
    sget-boolean v0, Lair/com/adobe/cc/notifications/c2dm/C2DMAirExtension;->extensionInitialized:Z

    return v0
.end method


# virtual methods
.method public createContext(Ljava/lang/String;)Lcom/adobe/fre/FREContext;
    .locals 1
    .parameter "extId"

    .prologue
    .line 15
    const/4 v0, 0x1

    sput-boolean v0, Lair/com/adobe/cc/notifications/c2dm/C2DMAirExtension;->extensionInitialized:Z

    .line 16
    invoke-static {}, Lair/com/adobe/cc/notifications/c2dm/C2DMAirExtension;->getContext()Lcom/adobe/fre/FREContext;

    move-result-object v0

    return-object v0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 46
    return-void
.end method

.method public finalize()V
    .locals 1

    .prologue
    .line 36
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    return-void

    .line 38
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public initialize()V
    .locals 0

    .prologue
    .line 29
    return-void
.end method
