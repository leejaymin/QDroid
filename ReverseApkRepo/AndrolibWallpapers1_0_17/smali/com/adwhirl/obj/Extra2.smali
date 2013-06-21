.class public Lcom/adwhirl/obj/Extra2;
.super Ljava/lang/Object;
.source "Extra2.java"


# static fields
.field public static adsenseColorBackground:Ljava/lang/String;

.field public static adsenseColorBorder:Ljava/lang/String;

.field public static adsenseColorLink:Ljava/lang/String;

.field public static adsenseColorText:Ljava/lang/String;

.field public static adsenseColorUrl:Ljava/lang/String;

.field public static extraLinkMarketCustom:Ljava/lang/String;

.field public static googleAdSenseWebEquivalentUrl:Ljava/lang/String;

.field public static verboselog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-string v3, "#FFFFFF"

    const-string v2, "#0000FF"

    const-string v1, ""

    .line 4
    const-string v0, "#FFFFFF"

    sput-object v3, Lcom/adwhirl/obj/Extra2;->adsenseColorBackground:Ljava/lang/String;

    .line 5
    const-string v0, "#000000"

    sput-object v0, Lcom/adwhirl/obj/Extra2;->adsenseColorText:Ljava/lang/String;

    .line 6
    const-string v0, "#0000FF"

    sput-object v2, Lcom/adwhirl/obj/Extra2;->adsenseColorUrl:Ljava/lang/String;

    .line 7
    const-string v0, "#FFFFFF"

    sput-object v3, Lcom/adwhirl/obj/Extra2;->adsenseColorBorder:Ljava/lang/String;

    .line 8
    const-string v0, "#0000FF"

    sput-object v2, Lcom/adwhirl/obj/Extra2;->adsenseColorLink:Ljava/lang/String;

    .line 9
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adwhirl/obj/Extra2;->verboselog:Z

    .line 10
    const-string v0, ""

    sput-object v1, Lcom/adwhirl/obj/Extra2;->extraLinkMarketCustom:Ljava/lang/String;

    .line 11
    const-string v0, ""

    sput-object v1, Lcom/adwhirl/obj/Extra2;->googleAdSenseWebEquivalentUrl:Ljava/lang/String;

    .line 3
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
