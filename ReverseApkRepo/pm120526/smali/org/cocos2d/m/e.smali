.class public final Lorg/cocos2d/m/e;
.super Ljava/lang/Object;


# static fields
.field private static a:Lorg/cocos2d/m/e;


# instance fields
.field private b:Lorg/cocos2d/m/g;

.field private c:Lorg/cocos2d/m/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cocos2d/m/e;

    invoke-direct {v0}, Lorg/cocos2d/m/e;-><init>()V

    sput-object v0, Lorg/cocos2d/m/e;->a:Lorg/cocos2d/m/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/cocos2d/m/f;

    invoke-direct {v0, p0}, Lorg/cocos2d/m/f;-><init>(Lorg/cocos2d/m/e;)V

    iput-object v0, p0, Lorg/cocos2d/m/e;->c:Lorg/cocos2d/m/g;

    return-void
.end method

.method public static a()Lorg/cocos2d/m/e;
    .locals 1

    sget-object v0, Lorg/cocos2d/m/e;->a:Lorg/cocos2d/m/e;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/m/e;->b:Lorg/cocos2d/m/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/cocos2d/m/e;->b:Lorg/cocos2d/m/g;

    invoke-interface {v0, p1}, Lorg/cocos2d/m/g;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/cocos2d/m/e;->c:Lorg/cocos2d/m/g;

    invoke-interface {v0, p1}, Lorg/cocos2d/m/g;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method
