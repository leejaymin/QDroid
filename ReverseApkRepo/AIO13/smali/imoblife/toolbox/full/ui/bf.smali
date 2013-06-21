.class public final Limoblife/toolbox/full/ui/bf;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Limoblife/toolbox/full/ui/ax;

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/content/pm/ApplicationInfo;

.field private k:Z

.field private l:I

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>(Limoblife/toolbox/full/ui/ax;Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 13

    const-wide/16 v11, 0x64

    const v10, 0x3f19999a

    const v9, 0x3ecccccd

    const v1, -0x777778

    iput-object p1, p0, Limoblife/toolbox/full/ui/bf;->a:Limoblife/toolbox/full/ui/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Limoblife/toolbox/full/ui/bf;->k:Z

    iput v1, p0, Limoblife/toolbox/full/ui/bf;->l:I

    iput v1, p0, Limoblife/toolbox/full/ui/bf;->m:I

    iput v1, p0, Limoblife/toolbox/full/ui/bf;->n:I

    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v0, p0, Limoblife/toolbox/full/ui/bf;->b:I

    iget-object v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Limoblife/toolbox/full/ui/bf;->g:Ljava/lang/String;

    iget-object v0, p0, Limoblife/toolbox/full/ui/bf;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/bf;->a(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/bf;->j:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Limoblife/toolbox/full/ui/bf;->j:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Limoblife/toolbox/full/ui/ax;->b(Limoblife/toolbox/full/ui/ax;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/bf;->i:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Limoblife/toolbox/full/ui/bf;->j:Landroid/content/pm/ApplicationInfo;

    invoke-static {p1}, Limoblife/toolbox/full/ui/ax;->b(Limoblife/toolbox/full/ui/ax;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Limoblife/toolbox/full/ui/bf;->h:Ljava/lang/String;

    iget v0, p0, Limoblife/toolbox/full/ui/bf;->b:I

    invoke-direct {p0, v0}, Limoblife/toolbox/full/ui/bf;->b(I)J

    move-result-wide v0

    iput-wide v0, p0, Limoblife/toolbox/full/ui/bf;->f:J

    iget-wide v0, p0, Limoblife/toolbox/full/ui/bf;->f:J

    long-to-float v0, v0

    iget-object v1, p0, Limoblife/toolbox/full/ui/bf;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v1}, Limoblife/toolbox/full/ui/ax;->c(Limoblife/toolbox/full/ui/ax;)J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/high16 v2, 0x42c8

    div-float/2addr v0, v2

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    iput v0, p0, Limoblife/toolbox/full/ui/bf;->e:F

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Limoblife/toolbox/full/ui/bf;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/statm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    iput v0, p0, Limoblife/toolbox/full/ui/bf;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/proc/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Limoblife/toolbox/full/ui/bf;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xd

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    const/16 v3, 0xe

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    const/16 v5, 0xf

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    const/16 v7, 0x10

    aget-object v0, v0, v7

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    add-long v0, v1, v3

    add-long/2addr v0, v5

    add-long/2addr v0, v7

    mul-long/2addr v0, v11

    mul-long/2addr v0, v11

    long-to-double v0, v0

    iget-object v2, p0, Limoblife/toolbox/full/ui/bf;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v2}, Limoblife/toolbox/full/ui/ax;->c(Limoblife/toolbox/full/ui/ax;)J

    move-result-wide v2

    long-to-double v2, v2

    div-double v2, v0, v2

    const-wide/high16 v4, 0x4059

    div-double/2addr v2, v4

    double-to-float v2, v2

    iget v3, p0, Limoblife/toolbox/full/ui/bf;->c:I

    mul-int/lit8 v3, v3, 0x64

    int-to-long v3, v3

    iget-object v5, p0, Limoblife/toolbox/full/ui/bf;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v5}, Limoblife/toolbox/full/ui/ax;->d(Limoblife/toolbox/full/ui/ax;)J

    move-result-wide v5

    div-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    long-to-float v3, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v10

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v9

    add-float/2addr v4, v5

    iput v4, p0, Limoblife/toolbox/full/ui/bf;->d:F

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "-batteryUsage- + retrieveBattery(): d1 = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "-batteryUsage- + retrieveBattery(): cpu_part * 0.6f = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-float/2addr v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-batteryUsage- + retrieveBattery(): _memoryUsage = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Limoblife/toolbox/full/ui/bf;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-batteryUsage- + retrieveBattery(): ram_part * 0.4f = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    mul-float v2, v3, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-batteryUsage- = retrieveBattery(): _batteryUsage = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Limoblife/toolbox/full/ui/bf;->d:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "retrieveMemory(): Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "retriveBattery(): Exception = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private a(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Limoblife/toolbox/full/ui/bf;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v1}, Limoblife/toolbox/full/ui/ax;->b(Limoblife/toolbox/full/ui/ax;)Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Limoblife/toolbox/full/ui/bf;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v1}, Limoblife/toolbox/full/ui/ax;->b(Limoblife/toolbox/full/ui/ax;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAppInfo(): NameNotFoundException = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static a(F)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "##.##"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "0.00"

    invoke-virtual {v0, v1}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    float-to-double v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Limoblife/toolbox/full/ui/bf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/bf;->g:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)J
    .locals 10

    const-wide/16 v1, 0x0

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "/proc/"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/stat"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v5, Ljava/io/DataInputStream;

    invoke-direct {v5, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\\s+"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    const/16 v0, 0xd

    move v7, v0

    move-wide v8, v1

    move-wide v0, v8

    move v2, v7

    :goto_0
    const/16 v3, 0x11

    if-lt v2, v3, :cond_0

    :try_start_1
    invoke-virtual {v5}, Ljava/io/DataInputStream;->close()V

    :goto_1
    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    return-wide v0

    :cond_0
    aget-object v3, v6, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    int-to-long v3, v3

    add-long/2addr v3, v0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-wide v0, v3

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v7, v0

    move-wide v8, v1

    move-wide v0, v8

    move-object v2, v7

    :goto_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCpuTime(): Exception = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2
.end method

.method static synthetic b(Limoblife/toolbox/full/ui/bf;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/bf;->h:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/View;)Landroid/view/View;
    .locals 6

    const v5, 0x7f0700cf

    const v3, 0x7f0700ce

    const v4, 0x7f0700cd

    if-nez p1, :cond_0

    iget-object v0, p0, Limoblife/toolbox/full/ui/bf;->a:Limoblife/toolbox/full/ui/ax;

    invoke-static {v0}, Limoblife/toolbox/full/ui/ax;->e(Limoblife/toolbox/full/ui/ax;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030036

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    new-instance v1, Limoblife/toolbox/full/ui/bg;

    iget-object v0, p0, Limoblife/toolbox/full/ui/bf;->a:Limoblife/toolbox/full/ui/ax;

    invoke-direct {v1, v0}, Limoblife/toolbox/full/ui/bg;-><init>(Limoblife/toolbox/full/ui/ax;)V

    const v0, 0x7f080003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/bg;->a:Landroid/widget/ImageView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/bg;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/bf;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f080010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/bg;->b:Landroid/widget/TextView;

    iget-object v0, v1, Limoblife/toolbox/full/ui/bg;->b:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/bf;->h:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080085

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/bg;->d:Landroid/widget/TextView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/bf;->a:Limoblife/toolbox/full/ui/ax;

    invoke-virtual {v0, v3}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Limoblife/toolbox/full/ui/bg;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Limoblife/toolbox/full/ui/bf;->e:F

    invoke-static {v0}, Limoblife/toolbox/full/ui/bf;->a(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "% "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Limoblife/toolbox/full/ui/bg;->d:Landroid/widget/TextView;

    iget v2, p0, Limoblife/toolbox/full/ui/bf;->l:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f080084

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/bg;->c:Landroid/widget/TextView;

    invoke-static {}, Lutil/a/a;->a()Lutil/a/a;

    iget v0, p0, Limoblife/toolbox/full/ui/bf;->c:I

    int-to-long v2, v0

    invoke-static {v2, v3}, Lutil/a/a;->a(J)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Limoblife/toolbox/full/ui/bf;->a:Limoblife/toolbox/full/ui/ax;

    invoke-virtual {v2, v4}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Limoblife/toolbox/full/ui/bg;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Limoblife/toolbox/full/ui/bg;->c:Landroid/widget/TextView;

    iget v2, p0, Limoblife/toolbox/full/ui/bf;->m:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f080086

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Limoblife/toolbox/full/ui/bg;->e:Landroid/widget/TextView;

    iget-object v0, p0, Limoblife/toolbox/full/ui/bf;->a:Limoblife/toolbox/full/ui/ax;

    invoke-virtual {v0, v5}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, v1, Limoblife/toolbox/full/ui/bg;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Limoblife/toolbox/full/ui/bf;->d:F

    invoke-static {v0}, Limoblife/toolbox/full/ui/bf;->a(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "%"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Limoblife/toolbox/full/ui/bg;->e:Landroid/widget/TextView;

    iget v2, p0, Limoblife/toolbox/full/ui/bf;->n:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f080087

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, v1, Limoblife/toolbox/full/ui/bg;->f:Landroid/widget/CheckBox;

    iget-object v0, v1, Limoblife/toolbox/full/ui/bg;->f:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Limoblife/toolbox/full/ui/bf;->k:Z

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Limoblife/toolbox/full/ui/bg;

    iget-object v1, v0, Limoblife/toolbox/full/ui/bg;->a:Landroid/widget/ImageView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/bf;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/bg;->b:Landroid/widget/TextView;

    iget-object v2, p0, Limoblife/toolbox/full/ui/bf;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Limoblife/toolbox/full/ui/bf;->a:Limoblife/toolbox/full/ui/ax;

    invoke-virtual {v1, v3}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Limoblife/toolbox/full/ui/bg;->d:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Limoblife/toolbox/full/ui/bf;->e:F

    invoke-static {v1}, Limoblife/toolbox/full/ui/bf;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "% "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/bg;->d:Landroid/widget/TextView;

    iget v2, p0, Limoblife/toolbox/full/ui/bf;->l:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lutil/a/a;->a()Lutil/a/a;

    iget v1, p0, Limoblife/toolbox/full/ui/bf;->c:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lutil/a/a;->a(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Limoblife/toolbox/full/ui/bf;->a:Limoblife/toolbox/full/ui/ax;

    invoke-virtual {v2, v4}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Limoblife/toolbox/full/ui/bg;->c:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/bg;->c:Landroid/widget/TextView;

    iget v2, p0, Limoblife/toolbox/full/ui/bf;->m:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Limoblife/toolbox/full/ui/bf;->a:Limoblife/toolbox/full/ui/ax;

    invoke-virtual {v1, v5}, Limoblife/toolbox/full/ui/ax;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Limoblife/toolbox/full/ui/bg;->e:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Limoblife/toolbox/full/ui/bf;->d:F

    invoke-static {v1}, Limoblife/toolbox/full/ui/bf;->a(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Limoblife/toolbox/full/ui/bg;->e:Landroid/widget/TextView;

    iget v2, p0, Limoblife/toolbox/full/ui/bf;->n:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, v0, Limoblife/toolbox/full/ui/bg;->f:Landroid/widget/CheckBox;

    iget-boolean v1, p0, Limoblife/toolbox/full/ui/bf;->k:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_0
.end method

.method public final a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Limoblife/toolbox/full/ui/bf;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    const/16 v1, -0xafd

    const v0, -0x303031

    iput v0, p0, Limoblife/toolbox/full/ui/bf;->l:I

    iput v0, p0, Limoblife/toolbox/full/ui/bf;->m:I

    iput v0, p0, Limoblife/toolbox/full/ui/bf;->n:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iput v1, p0, Limoblife/toolbox/full/ui/bf;->l:I

    goto :goto_0

    :pswitch_1
    iput v1, p0, Limoblife/toolbox/full/ui/bf;->m:I

    goto :goto_0

    :pswitch_2
    iput v1, p0, Limoblife/toolbox/full/ui/bf;->n:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Limoblife/toolbox/full/ui/bf;->k:Z

    return-void
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Limoblife/toolbox/full/ui/bf;->e:F

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Limoblife/toolbox/full/ui/bf;->c:I

    return v0
.end method

.method public final d()F
    .locals 1

    iget v0, p0, Limoblife/toolbox/full/ui/bf;->d:F

    return v0
.end method

.method public final e()Z
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/bf;->k:Z

    return v0
.end method

.method public final f()V
    .locals 1

    iget-boolean v0, p0, Limoblife/toolbox/full/ui/bf;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Limoblife/toolbox/full/ui/bf;->k:Z

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
