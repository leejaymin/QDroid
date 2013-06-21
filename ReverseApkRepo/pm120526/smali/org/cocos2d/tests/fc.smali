.class Lorg/cocos2d/tests/fc;
.super Lorg/cocos2d/tests/ez;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/cocos2d/tests/ez;-><init>()V

    new-instance v0, Lorg/cocos2d/tests/fh;

    const-string v1, "---"

    const/16 v2, 0x32

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/tests/fh;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/fc;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    new-instance v0, Lorg/cocos2d/tests/fh;

    const-string v1, "3rd"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/tests/fh;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/fc;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    new-instance v0, Lorg/cocos2d/tests/fh;

    const-string v1, "1st"

    const/16 v2, -0xa

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/tests/fh;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/fc;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    new-instance v0, Lorg/cocos2d/tests/fh;

    const-string v1, "4th"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/tests/fh;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/fc;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    new-instance v0, Lorg/cocos2d/tests/fh;

    const-string v1, "5th"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/tests/fh;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/fc;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    new-instance v0, Lorg/cocos2d/tests/fh;

    const-string v1, "2nd"

    const/4 v2, -0x5

    invoke-direct {v0, v1, v2}, Lorg/cocos2d/tests/fh;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/fc;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    const-string v0, "removeUpdates"

    const/high16 v1, 0x4080

    invoke-virtual {p0, v0, v1}, Lorg/cocos2d/tests/fc;->a(Ljava/lang/String;F)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "Schedule update with priority"

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    const-string v0, "3 scheduled updates. Priority should work. Stops in 4s. See console"

    return-object v0
.end method
