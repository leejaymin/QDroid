.class public final Lorg/cocos2d/m/d;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/StringBuilder;

.field private static b:Ljava/util/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lorg/cocos2d/m/d;->a:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lorg/cocos2d/m/d;->a:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    sput-object v0, Lorg/cocos2d/m/d;->b:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(I)I
    .locals 3

    ushr-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p0, 0x18

    or-int/2addr v0, v1

    shl-int/lit8 v1, p0, 0x8

    const/high16 v2, 0xff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    shr-int/lit8 v1, p0, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method public static varargs declared-synchronized a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    const-class v0, Lorg/cocos2d/m/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/cocos2d/m/d;->a:Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    sget-object v1, Lorg/cocos2d/m/d;->b:Ljava/util/Formatter;

    invoke-virtual {v1, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    sget-object v1, Lorg/cocos2d/m/d;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
