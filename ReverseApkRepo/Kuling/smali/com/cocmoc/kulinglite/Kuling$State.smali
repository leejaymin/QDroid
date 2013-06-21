.class Lcom/cocmoc/kulinglite/Kuling$State;
.super Ljava/lang/Object;
.source "Kuling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cocmoc/kulinglite/Kuling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "State"
.end annotation


# instance fields
.field WeatherStationID:Ljava/lang/String;

.field myTextColor:I

.field myTextColor_2:I

.field myTheme:Ljava/lang/String;

.field registered:Ljava/lang/String;

.field final synthetic this$0:Lcom/cocmoc/kulinglite/Kuling;

.field updateRateSeconds:I

.field weatherStation:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/cocmoc/kulinglite/Kuling;)V
    .locals 1
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/cocmoc/kulinglite/Kuling$State;->this$0:Lcom/cocmoc/kulinglite/Kuling;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/cocmoc/kulinglite/Kuling$State;->WeatherStationID:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/cocmoc/kulinglite/Kuling;Lcom/cocmoc/kulinglite/Kuling$State;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/cocmoc/kulinglite/Kuling$State;-><init>(Lcom/cocmoc/kulinglite/Kuling;)V

    return-void
.end method
