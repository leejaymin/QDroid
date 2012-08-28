.class Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond$Holder;
.super Ljava/lang/Object;
.source "ConnectionNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 179
    new-instance v0, Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond;-><init>(Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond;)V

    sput-object v0, Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond$Holder;->sInstance:Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond;

    .line 178
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond;
    .locals 1

    .prologue
    .line 179
    sget-object v0, Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond$Holder;->sInstance:Lorg/connectbot/service/ConnectionNotifier$EclairAndBeyond;

    return-object v0
.end method
