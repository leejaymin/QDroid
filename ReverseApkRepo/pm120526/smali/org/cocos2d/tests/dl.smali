.class final Lorg/cocos2d/tests/dl;
.super Lorg/cocos2d/e/b;


# direct methods
.method public constructor <init>()V
    .locals 14

    const/16 v8, 0x12

    const/16 v13, 0x22

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-direct {p0}, Lorg/cocos2d/e/b;-><init>()V

    const-string v0, "DroidSerif"

    invoke-static {v0}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;)V

    invoke-static {v8}, Lorg/cocos2d/f/d;->b(I)V

    const-string v0, "Sound"

    invoke-static {v0}, Lorg/cocos2d/f/d;->b(Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v0

    invoke-virtual {v0, v10}, Lorg/cocos2d/f/d;->a(Z)V

    const-string v1, "DroidSans"

    invoke-static {v1}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;)V

    invoke-static {v13}, Lorg/cocos2d/f/d;->b(I)V

    const-string v1, "menuCallback"

    new-array v2, v12, [Lorg/cocos2d/f/c;

    const-string v3, "On"

    invoke-static {v3}, Lorg/cocos2d/f/d;->b(Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v3

    aput-object v3, v2, v10

    const-string v3, "Off"

    invoke-static {v3}, Lorg/cocos2d/f/d;->b(Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {p0, v1, v2}, Lorg/cocos2d/f/h;->a(Lorg/cocos2d/g/i;Ljava/lang/String;[Lorg/cocos2d/f/c;)Lorg/cocos2d/f/h;

    move-result-object v1

    const-string v2, "DroidSerif"

    invoke-static {v2}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;)V

    invoke-static {v8}, Lorg/cocos2d/f/d;->b(I)V

    const-string v2, "Music"

    invoke-static {v2}, Lorg/cocos2d/f/d;->b(Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v2

    invoke-virtual {v2, v10}, Lorg/cocos2d/f/d;->a(Z)V

    const-string v3, "DroidSans"

    invoke-static {v3}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;)V

    invoke-static {v13}, Lorg/cocos2d/f/d;->b(I)V

    const-string v3, "menuCallback"

    new-array v4, v12, [Lorg/cocos2d/f/c;

    const-string v5, "On"

    invoke-static {v5}, Lorg/cocos2d/f/d;->b(Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v5

    aput-object v5, v4, v10

    const-string v5, "Off"

    invoke-static {v5}, Lorg/cocos2d/f/d;->b(Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {p0, v3, v4}, Lorg/cocos2d/f/h;->a(Lorg/cocos2d/g/i;Ljava/lang/String;[Lorg/cocos2d/f/c;)Lorg/cocos2d/f/h;

    move-result-object v3

    const-string v4, "DroidSerif"

    invoke-static {v4}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;)V

    invoke-static {v8}, Lorg/cocos2d/f/d;->b(I)V

    const-string v4, "Quality"

    invoke-static {v4}, Lorg/cocos2d/f/d;->b(Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v4

    invoke-virtual {v4, v10}, Lorg/cocos2d/f/d;->a(Z)V

    const-string v5, "DroidSans"

    invoke-static {v5}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;)V

    invoke-static {v13}, Lorg/cocos2d/f/d;->b(I)V

    const-string v5, "menuCallback"

    new-array v6, v12, [Lorg/cocos2d/f/c;

    const-string v7, "High"

    invoke-static {v7}, Lorg/cocos2d/f/d;->b(Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v7

    aput-object v7, v6, v10

    const-string v7, "Low"

    invoke-static {v7}, Lorg/cocos2d/f/d;->b(Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v7

    aput-object v7, v6, v11

    invoke-static {p0, v5, v6}, Lorg/cocos2d/f/h;->a(Lorg/cocos2d/g/i;Ljava/lang/String;[Lorg/cocos2d/f/c;)Lorg/cocos2d/f/h;

    move-result-object v5

    const-string v6, "DroidSerif"

    invoke-static {v6}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;)V

    invoke-static {v8}, Lorg/cocos2d/f/d;->b(I)V

    const-string v6, "Orientation"

    invoke-static {v6}, Lorg/cocos2d/f/d;->b(Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v6

    invoke-virtual {v6, v10}, Lorg/cocos2d/f/d;->a(Z)V

    const-string v7, "DroidSans"

    invoke-static {v7}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;)V

    invoke-static {v13}, Lorg/cocos2d/f/d;->b(I)V

    const-string v7, "menuCallback"

    new-array v8, v11, [Lorg/cocos2d/f/c;

    const-string v9, "Off"

    invoke-static {v9}, Lorg/cocos2d/f/d;->b(Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v9

    aput-object v9, v8, v10

    invoke-static {p0, v7, v8}, Lorg/cocos2d/f/h;->a(Lorg/cocos2d/g/i;Ljava/lang/String;[Lorg/cocos2d/f/c;)Lorg/cocos2d/f/h;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v9, "33%"

    invoke-static {v9}, Lorg/cocos2d/f/d;->b(Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "66%"

    invoke-static {v9}, Lorg/cocos2d/f/d;->b(Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v9, "100%"

    invoke-static {v9}, Lorg/cocos2d/f/d;->b(Ljava/lang/String;)Lorg/cocos2d/f/d;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lorg/cocos2d/f/h;->a()Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7, v12}, Lorg/cocos2d/f/h;->a(I)V

    const-string v8, "DroidSerif"

    invoke-static {v8}, Lorg/cocos2d/f/d;->a(Ljava/lang/String;)V

    invoke-static {v13}, Lorg/cocos2d/f/d;->b(I)V

    const-string v8, "go back"

    const-string v9, "bitmapFontTest3.fnt"

    invoke-static {v8, v9}, Lorg/cocos2d/opengl/a;->a(Ljava/lang/CharSequence;Ljava/lang/String;)Lorg/cocos2d/opengl/a;

    move-result-object v8

    const-string v9, "backCallback"

    invoke-static {v8, p0, v9}, Lorg/cocos2d/f/f;->a(Lorg/cocos2d/i/b;Lorg/cocos2d/g/i;Ljava/lang/String;)Lorg/cocos2d/f/f;

    move-result-object v8

    const/16 v9, 0x9

    new-array v9, v9, [Lorg/cocos2d/f/c;

    aput-object v0, v9, v10

    aput-object v2, v9, v11

    aput-object v1, v9, v12

    const/4 v0, 0x3

    aput-object v3, v9, v0

    const/4 v0, 0x4

    aput-object v4, v9, v0

    const/4 v0, 0x5

    aput-object v6, v9, v0

    const/4 v0, 0x6

    aput-object v5, v9, v0

    const/4 v0, 0x7

    aput-object v7, v9, v0

    const/16 v0, 0x8

    aput-object v8, v9, v0

    invoke-static {v9}, Lorg/cocos2d/f/a;->a([Lorg/cocos2d/f/c;)Lorg/cocos2d/f/a;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lorg/cocos2d/f/a;->a([I)V

    invoke-virtual {p0, v0}, Lorg/cocos2d/tests/dl;->a(Lorg/cocos2d/g/i;)Lorg/cocos2d/g/i;

    return-void

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data
.end method
