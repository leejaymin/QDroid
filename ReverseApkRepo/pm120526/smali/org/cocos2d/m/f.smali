.class final Lorg/cocos2d/m/f;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/cocos2d/m/g;


# instance fields
.field final synthetic a:Lorg/cocos2d/m/e;


# direct methods
.method constructor <init>(Lorg/cocos2d/m/e;)V
    .locals 0

    iput-object p1, p0, Lorg/cocos2d/m/f;->a:Lorg/cocos2d/m/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1

    sget-object v0, Lorg/cocos2d/g/c;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
