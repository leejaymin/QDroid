.class public Lcom/adobe/ttpixel/extension/TTPixelExtensionContextBigData;
.super Lcom/adobe/fre/FREContext;


# static fields
.field public static final AS_TTPREFLIGHTRESULT:Ljava/lang/String; = "com.adobe.ttpixel.extension.TTPreflightResult"

.field public static final AS_TTPREFLIGHTRESULT_LONGEST_RUN_LENGTH:Ljava/lang/String; = "longestRunLength"

.field public static final AS_TTPREFLIGHTRESULT_NUM_RUNS:Ljava/lang/String; = "numRuns"

.field public static final AS_TTPREFLIGHTRESULT_RECT_FULLY_OPAQUE:Ljava/lang/String; = "rectFullyOpaque"

.field public static final AS_TTPREFLIGHTRESULT_RECT_FULLY_TRANSPARENT:Ljava/lang/String; = "rectFullyTransparent"

.field public static final AS_TTPREFLIGHTRESULT_RECT_NOT_FULLY_OPAQUE:Ljava/lang/String; = "rectNotFullyOpaque"

.field public static final AS_TTPREFLIGHTRESULT_RECT_NOT_FULLY_TRANSPARENT:Ljava/lang/String; = "rectNotFullyTransparent"

.field public static final AS_TTPREFLIGHTRESULT_SET_FROM_STRING:Ljava/lang/String; = "setFromString"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/adobe/fre/FREContext;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFunctions()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/adobe/fre/FREFunction;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "preflight"

    new-instance v2, Lcom/adobe/ttpixel/extension/bigdata/FnPreflight;

    invoke-direct {v2}, Lcom/adobe/ttpixel/extension/bigdata/FnPreflight;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
