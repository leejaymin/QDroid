.class public final Lorg/apache/harmony/awt/ContextStorage;
.super Ljava/lang/Object;


# static fields
.field private static final b:Lorg/apache/harmony/awt/ContextStorage;


# instance fields
.field private volatile a:Z

.field private c:Ljava/awt/Toolkit;

.field private d:Lorg/apache/harmony/awt/datatransfer/DTK;

.field private e:Ljava/awt/GraphicsEnvironment;

.field private final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/harmony/awt/ContextStorage;

    invoke-direct {v0}, Lorg/apache/harmony/awt/ContextStorage;-><init>()V

    sput-object v0, Lorg/apache/harmony/awt/ContextStorage;->b:Lorg/apache/harmony/awt/ContextStorage;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lorg/apache/harmony/awt/ContextStorage;->a:Z

    new-instance v0, Lorg/apache/harmony/awt/a;

    invoke-direct {v0, p0, v1}, Lorg/apache/harmony/awt/a;-><init>(Lorg/apache/harmony/awt/ContextStorage;B)V

    iput-object v0, p0, Lorg/apache/harmony/awt/ContextStorage;->f:Ljava/lang/Object;

    return-void
.end method

.method public static getContextLock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/harmony/awt/ContextStorage;->b:Lorg/apache/harmony/awt/ContextStorage;

    iget-object v0, v0, Lorg/apache/harmony/awt/ContextStorage;->f:Ljava/lang/Object;

    return-object v0
.end method

.method public static getDTK()Lorg/apache/harmony/awt/datatransfer/DTK;
    .locals 1

    sget-object v0, Lorg/apache/harmony/awt/ContextStorage;->b:Lorg/apache/harmony/awt/ContextStorage;

    iget-object v0, v0, Lorg/apache/harmony/awt/ContextStorage;->d:Lorg/apache/harmony/awt/datatransfer/DTK;

    return-object v0
.end method

.method public static getDefaultToolkit()Ljava/awt/Toolkit;
    .locals 1

    sget-object v0, Lorg/apache/harmony/awt/ContextStorage;->b:Lorg/apache/harmony/awt/ContextStorage;

    iget-object v0, v0, Lorg/apache/harmony/awt/ContextStorage;->c:Ljava/awt/Toolkit;

    return-object v0
.end method

.method public static getGraphicsEnvironment()Ljava/awt/GraphicsEnvironment;
    .locals 1

    sget-object v0, Lorg/apache/harmony/awt/ContextStorage;->b:Lorg/apache/harmony/awt/ContextStorage;

    iget-object v0, v0, Lorg/apache/harmony/awt/ContextStorage;->e:Ljava/awt/GraphicsEnvironment;

    return-object v0
.end method

.method public static setDTK(Lorg/apache/harmony/awt/datatransfer/DTK;)V
    .locals 1

    sget-object v0, Lorg/apache/harmony/awt/ContextStorage;->b:Lorg/apache/harmony/awt/ContextStorage;

    iput-object p0, v0, Lorg/apache/harmony/awt/ContextStorage;->d:Lorg/apache/harmony/awt/datatransfer/DTK;

    return-void
.end method

.method public static setDefaultToolkit(Ljava/awt/Toolkit;)V
    .locals 1

    sget-object v0, Lorg/apache/harmony/awt/ContextStorage;->b:Lorg/apache/harmony/awt/ContextStorage;

    iput-object p0, v0, Lorg/apache/harmony/awt/ContextStorage;->c:Ljava/awt/Toolkit;

    return-void
.end method

.method public static setGraphicsEnvironment(Ljava/awt/GraphicsEnvironment;)V
    .locals 1

    sget-object v0, Lorg/apache/harmony/awt/ContextStorage;->b:Lorg/apache/harmony/awt/ContextStorage;

    iput-object p0, v0, Lorg/apache/harmony/awt/ContextStorage;->e:Ljava/awt/GraphicsEnvironment;

    return-void
.end method

.method public static shutdownPending()Z
    .locals 1

    sget-object v0, Lorg/apache/harmony/awt/ContextStorage;->b:Lorg/apache/harmony/awt/ContextStorage;

    iget-boolean v0, v0, Lorg/apache/harmony/awt/ContextStorage;->a:Z

    return v0
.end method
