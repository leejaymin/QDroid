.class public final Lorg/cocos2d/l/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/ThreadLocal;


# instance fields
.field private b:Lorg/cocos2d/m/c/b;

.field private c:Lorg/cocos2d/m/c/c;

.field private d:Lorg/cocos2d/m/c/c;

.field private e:Lorg/cocos2d/m/c/c;

.field private f:Lorg/cocos2d/m/c/c;

.field private g:Lorg/cocos2d/m/c/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/cocos2d/l/a/c;

    invoke-direct {v0}, Lorg/cocos2d/l/a/c;-><init>()V

    sput-object v0, Lorg/cocos2d/l/a/b;->a:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/cocos2d/m/c/b;

    invoke-direct {v0}, Lorg/cocos2d/m/c/b;-><init>()V

    iput-object v0, p0, Lorg/cocos2d/l/a/b;->b:Lorg/cocos2d/m/c/b;

    new-instance v0, Lorg/cocos2d/l/a/d;

    invoke-direct {v0, p0}, Lorg/cocos2d/l/a/d;-><init>(Lorg/cocos2d/l/a/b;)V

    iput-object v0, p0, Lorg/cocos2d/l/a/b;->c:Lorg/cocos2d/m/c/c;

    iget-object v0, p0, Lorg/cocos2d/l/a/b;->b:Lorg/cocos2d/m/c/b;

    const-class v1, Lorg/cocos2d/l/e;

    iget-object v2, p0, Lorg/cocos2d/l/a/b;->c:Lorg/cocos2d/m/c/c;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/m/c/b;->a(Ljava/lang/Class;Lorg/cocos2d/m/c/c;)Lorg/cocos2d/m/c/c;

    new-instance v0, Lorg/cocos2d/l/a/e;

    invoke-direct {v0, p0}, Lorg/cocos2d/l/a/e;-><init>(Lorg/cocos2d/l/a/b;)V

    iput-object v0, p0, Lorg/cocos2d/l/a/b;->d:Lorg/cocos2d/m/c/c;

    iget-object v0, p0, Lorg/cocos2d/l/a/b;->b:Lorg/cocos2d/m/c/b;

    const-class v1, Lorg/cocos2d/l/n;

    iget-object v2, p0, Lorg/cocos2d/l/a/b;->d:Lorg/cocos2d/m/c/c;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/m/c/b;->a(Ljava/lang/Class;Lorg/cocos2d/m/c/c;)Lorg/cocos2d/m/c/c;

    new-instance v0, Lorg/cocos2d/l/a/f;

    invoke-direct {v0, p0}, Lorg/cocos2d/l/a/f;-><init>(Lorg/cocos2d/l/a/b;)V

    iput-object v0, p0, Lorg/cocos2d/l/a/b;->e:Lorg/cocos2d/m/c/c;

    iget-object v0, p0, Lorg/cocos2d/l/a/b;->b:Lorg/cocos2d/m/c/b;

    const-class v1, Lorg/cocos2d/l/o;

    iget-object v2, p0, Lorg/cocos2d/l/a/b;->e:Lorg/cocos2d/m/c/c;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/m/c/b;->a(Ljava/lang/Class;Lorg/cocos2d/m/c/c;)Lorg/cocos2d/m/c/c;

    new-instance v0, Lorg/cocos2d/l/a/g;

    invoke-direct {v0, p0}, Lorg/cocos2d/l/a/g;-><init>(Lorg/cocos2d/l/a/b;)V

    iput-object v0, p0, Lorg/cocos2d/l/a/b;->f:Lorg/cocos2d/m/c/c;

    iget-object v0, p0, Lorg/cocos2d/l/a/b;->b:Lorg/cocos2d/m/c/b;

    const-class v1, Lorg/cocos2d/l/f;

    iget-object v2, p0, Lorg/cocos2d/l/a/b;->f:Lorg/cocos2d/m/c/c;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/m/c/b;->a(Ljava/lang/Class;Lorg/cocos2d/m/c/c;)Lorg/cocos2d/m/c/c;

    new-instance v0, Lorg/cocos2d/l/a/h;

    invoke-direct {v0, p0}, Lorg/cocos2d/l/a/h;-><init>(Lorg/cocos2d/l/a/b;)V

    iput-object v0, p0, Lorg/cocos2d/l/a/b;->g:Lorg/cocos2d/m/c/c;

    iget-object v0, p0, Lorg/cocos2d/l/a/b;->b:Lorg/cocos2d/m/c/b;

    const-class v1, Lorg/cocos2d/l/d;

    iget-object v2, p0, Lorg/cocos2d/l/a/b;->g:Lorg/cocos2d/m/c/c;

    invoke-virtual {v0, v1, v2}, Lorg/cocos2d/m/c/b;->a(Ljava/lang/Class;Lorg/cocos2d/m/c/c;)Lorg/cocos2d/m/c/c;

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    invoke-direct {p0}, Lorg/cocos2d/l/a/b;-><init>()V

    return-void
.end method

.method public static a()Lorg/cocos2d/l/a/b;
    .locals 1

    sget-object v0, Lorg/cocos2d/l/a/b;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/cocos2d/l/a/b;

    return-object v0
.end method


# virtual methods
.method public final b()Lorg/cocos2d/m/c/c;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/l/a/b;->c:Lorg/cocos2d/m/c/c;

    return-object v0
.end method

.method public final c()Lorg/cocos2d/m/c/c;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/l/a/b;->d:Lorg/cocos2d/m/c/c;

    return-object v0
.end method

.method public final d()Lorg/cocos2d/m/c/c;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/l/a/b;->e:Lorg/cocos2d/m/c/c;

    return-object v0
.end method

.method public final e()Lorg/cocos2d/m/c/c;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/l/a/b;->f:Lorg/cocos2d/m/c/c;

    return-object v0
.end method

.method public final f()Lorg/cocos2d/m/c/c;
    .locals 1

    iget-object v0, p0, Lorg/cocos2d/l/a/b;->g:Lorg/cocos2d/m/c/c;

    return-object v0
.end method
