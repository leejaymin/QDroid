.class final Lorg/cocos2d/tests/fh;
.super Lorg/cocos2d/g/i;

# interfaces
.implements Lorg/cocos2d/a/i;


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/g/i;-><init>()V

    iput-object p1, p0, Lorg/cocos2d/tests/fh;->a:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lorg/cocos2d/tests/fh;->f(I)V

    return-void
.end method


# virtual methods
.method public final a(F)V
    .locals 2

    sget-object v0, Lorg/cocos2d/tests/SchedulerTest;->a:Ljava/lang/String;

    iget-object v1, p0, Lorg/cocos2d/tests/fh;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
