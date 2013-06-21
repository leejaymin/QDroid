.class public final Lcom/mosaicture/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/mosaicture/c/d;


# static fields
.field public static a:Lcom/mosaicture/g/c;

.field public static b:Lcom/mosaicture/g/a;

.field public static c:Lcom/mosaicture/a/a;

.field private static d:Lcom/mosaicture/c/f;

.field private static e:Lcom/mosaicture/b/c;

.field private static f:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p1, Lcom/mosaicture/a/a;->f:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v0

    new-instance v1, Lcom/mosaicture/g/c;

    const/high16 v2, 0x10

    mul-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x4

    invoke-direct {v1, v0}, Lcom/mosaicture/g/c;-><init>(I)V

    sput-object v1, Lcom/mosaicture/a/a;->a:Lcom/mosaicture/g/c;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/mosaicture/c/f;
    .locals 3

    sget-object v0, Lcom/mosaicture/a/a;->c:Lcom/mosaicture/a/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/mosaicture/a/a;

    invoke-direct {v0, p0}, Lcom/mosaicture/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mosaicture/a/a;->c:Lcom/mosaicture/a/a;

    sget-object v1, Lcom/mosaicture/a/a;->e:Lcom/mosaicture/b/c;

    if-nez v1, :cond_0

    sget-object v1, Lcom/mosaicture/a/a;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/mosaicture/b/c;->a(Landroid/content/Context;)Lcom/mosaicture/b/c;

    move-result-object v1

    sput-object v1, Lcom/mosaicture/a/a;->e:Lcom/mosaicture/b/c;

    :cond_0
    sget-object v1, Lcom/mosaicture/a/a;->d:Lcom/mosaicture/c/f;

    if-nez v1, :cond_1

    new-instance v1, Lcom/mosaicture/c/f;

    sget-object v2, Lcom/mosaicture/a/a;->f:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/mosaicture/c/f;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mosaicture/a/a;->d:Lcom/mosaicture/c/f;

    invoke-virtual {v1, v0}, Lcom/mosaicture/c/f;->a(Lcom/mosaicture/c/d;)V

    :cond_1
    sget-object v0, Lcom/mosaicture/a/a;->b:Lcom/mosaicture/g/a;

    if-nez v0, :cond_2

    new-instance v0, Lcom/mosaicture/g/a;

    sget-object v1, Lcom/mosaicture/a/a;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mosaicture/g/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mosaicture/a/a;->b:Lcom/mosaicture/g/a;

    :cond_2
    sget-object v0, Lcom/mosaicture/a/a;->d:Lcom/mosaicture/c/f;

    return-object v0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Mosaicture"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/mosaicture/a/a;->f:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/mosaicture/c/j;)V
    .locals 0

    return-void
.end method
