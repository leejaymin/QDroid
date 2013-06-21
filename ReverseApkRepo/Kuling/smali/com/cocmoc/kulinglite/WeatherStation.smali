.class public Lcom/cocmoc/kulinglite/WeatherStation;
.super Landroid/app/ListActivity;
.source "WeatherStation.java"


# instance fields
.field final StationIDCharSequence:[Ljava/lang/CharSequence;

.field final StationNameCharSequence:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 18
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/cocmoc/kulinglite/WeatherStation;->StationNameCharSequence:[Ljava/lang/CharSequence;

    .line 19
    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/cocmoc/kulinglite/WeatherStation;->StationIDCharSequence:[Ljava/lang/CharSequence;

    .line 21
    return-void
.end method


# virtual methods
.method public getStationID(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 52
    iget-object v0, p0, Lcom/cocmoc/kulinglite/WeatherStation;->StationIDCharSequence:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p0, v0, v1

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStationIDPosition(Ljava/lang/String;)I
    .locals 3
    .parameter "StationID"

    .prologue
    .line 25
    const/4 v1, 0x0

    .line 27
    .local v1, position:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/cocmoc/kulinglite/WeatherStation;->StationIDCharSequence:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 32
    return v1

    .line 28
    :cond_0
    iget-object v2, p0, Lcom/cocmoc/kulinglite/WeatherStation;->StationIDCharSequence:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    move v1, v0

    .line 27
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getStationName(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 2
    .parameter "position"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/cocmoc/kulinglite/WeatherStation;->StationNameCharSequence:[Ljava/lang/CharSequence;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object p0, v0, v1

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStationNamePosition(Ljava/lang/String;)I
    .locals 3
    .parameter "StationName"

    .prologue
    .line 37
    const/4 v1, 0x0

    .line 39
    .local v1, position:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/cocmoc/kulinglite/WeatherStation;->StationNameCharSequence:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 44
    return v1

    .line 40
    :cond_0
    iget-object v2, p0, Lcom/cocmoc/kulinglite/WeatherStation;->StationNameCharSequence:[Ljava/lang/CharSequence;

    aget-object v2, v2, v0

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 41
    move v1, v0

    .line 39
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
