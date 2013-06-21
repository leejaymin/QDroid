.class public final enum Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
.super Ljava/lang/Enum;


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

.field public static final enum None:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

.field public static final enum Triangle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

.field public static final enum Underline:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;


# instance fields
.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    const-string v1, "None"

    invoke-direct {v0, v1, v2, v2}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    new-instance v0, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    const-string v1, "Triangle"

    invoke-direct {v0, v1, v3, v3}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->Triangle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    new-instance v0, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    const-string v1, "Underline"

    invoke-direct {v0, v1, v4, v4}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->Underline:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    sget-object v1, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->None:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->Triangle:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->Underline:Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    aput-object v1, v0, v4

    sput-object v0, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ENUM$VALUES:[Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->value:I

    return-void
.end method

.method public static fromValue(I)Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    .locals 5

    invoke-static {}, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->values()[Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v3, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    aget-object v0, v2, v1

    iget v4, v0, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->value:I

    if-eq v4, p0, :cond_0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    .locals 1

    const-class v0, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    return-object v0
.end method

.method public static values()[Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;->ENUM$VALUES:[Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    array-length v1, v0

    new-array v2, v1, [Lcom/viewpagerindicator/TitlePageIndicator$IndicatorStyle;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
