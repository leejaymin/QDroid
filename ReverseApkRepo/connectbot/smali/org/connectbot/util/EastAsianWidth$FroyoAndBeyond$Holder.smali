.class Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond$Holder;
.super Ljava/lang/Object;
.source "EastAsianWidth.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 66
    new-instance v0, Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond;-><init>(Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond;)V

    sput-object v0, Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond$Holder;->sInstance:Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond;

    .line 65
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond$Holder;->sInstance:Lorg/connectbot/util/EastAsianWidth$FroyoAndBeyond;

    return-object v0
.end method
