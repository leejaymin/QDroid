.class Lorg/connectbot/service/BackupWrapper$PreFroyo$Holder;
.super Ljava/lang/Object;
.source "BackupWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/connectbot/service/BackupWrapper$PreFroyo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final sInstance:Lorg/connectbot/service/BackupWrapper$PreFroyo;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lorg/connectbot/service/BackupWrapper$PreFroyo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/connectbot/service/BackupWrapper$PreFroyo;-><init>(Lorg/connectbot/service/BackupWrapper$PreFroyo;)V

    sput-object v0, Lorg/connectbot/service/BackupWrapper$PreFroyo$Holder;->sInstance:Lorg/connectbot/service/BackupWrapper$PreFroyo;

    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
