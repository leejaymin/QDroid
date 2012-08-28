.class Lorg/connectbot/service/ConnectionNotifier$PreEclair$Holder;
.super Ljava/lang/Object;
.source "ConnectionNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/service/ConnectionNotifier$PreEclair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lorg/connectbot/service/ConnectionNotifier$PreEclair;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    new-instance v0, Lorg/connectbot/service/ConnectionNotifier$PreEclair;

    invoke-direct {v0}, Lorg/connectbot/service/ConnectionNotifier$PreEclair;-><init>()V

    sput-object v0, Lorg/connectbot/service/ConnectionNotifier$PreEclair$Holder;->sInstance:Lorg/connectbot/service/ConnectionNotifier$PreEclair;

    .line 137
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lorg/connectbot/service/ConnectionNotifier$PreEclair;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lorg/connectbot/service/ConnectionNotifier$PreEclair$Holder;->sInstance:Lorg/connectbot/service/ConnectionNotifier$PreEclair;

    return-object v0
.end method
