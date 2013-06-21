.class public final Lcom/rubycell/pianisthd/d/d;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field private static e:I

.field private static f:I


# instance fields
.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ldpi"

    sput-object v0, Lcom/rubycell/pianisthd/d/d;->a:Ljava/lang/String;

    const-string v0, "mdpi"

    sput-object v0, Lcom/rubycell/pianisthd/d/d;->b:Ljava/lang/String;

    const-string v0, "hdpi"

    sput-object v0, Lcom/rubycell/pianisthd/d/d;->c:Ljava/lang/String;

    const-string v0, "xlarge"

    sput-object v0, Lcom/rubycell/pianisthd/d/d;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    if-gt v0, v1, :cond_1

    move v2, v1

    :goto_0
    sput v2, Lcom/rubycell/pianisthd/d/d;->f:I

    if-lt v0, v1, :cond_0

    move v0, v1

    :cond_0
    sput v0, Lcom/rubycell/pianisthd/d/d;->e:I

    sget v0, Lcom/rubycell/pianisthd/d/d;->f:I

    const/16 v1, 0x136

    if-lt v0, v1, :cond_2

    sget v0, Lcom/rubycell/pianisthd/d/d;->f:I

    const/16 v1, 0x14a

    if-gt v0, v1, :cond_2

    const-string v0, "ldpi"

    iput-object v0, p0, Lcom/rubycell/pianisthd/d/d;->g:Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    move v2, v0

    goto :goto_0

    :cond_2
    sget v0, Lcom/rubycell/pianisthd/d/d;->f:I

    const/16 v1, 0x1c2

    if-lt v0, v1, :cond_3

    sget v0, Lcom/rubycell/pianisthd/d/d;->f:I

    const/16 v1, 0x1f4

    if-gt v0, v1, :cond_3

    const-string v0, "mdpi"

    iput-object v0, p0, Lcom/rubycell/pianisthd/d/d;->g:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget v0, Lcom/rubycell/pianisthd/d/d;->f:I

    const/16 v1, 0x215

    if-ne v0, v1, :cond_4

    const-string v0, "hdpi"

    iput-object v0, p0, Lcom/rubycell/pianisthd/d/d;->g:Ljava/lang/String;

    goto :goto_1

    :cond_4
    sget v0, Lcom/rubycell/pianisthd/d/d;->f:I

    const/16 v1, 0x239

    if-lt v0, v1, :cond_5

    sget v0, Lcom/rubycell/pianisthd/d/d;->f:I

    const/16 v1, 0x384

    if-gt v0, v1, :cond_5

    const-string v0, "hdpi"

    iput-object v0, p0, Lcom/rubycell/pianisthd/d/d;->g:Ljava/lang/String;

    goto :goto_1

    :cond_5
    sget v0, Lcom/rubycell/pianisthd/d/d;->f:I

    const/16 v1, 0x3ac

    if-lt v0, v1, :cond_6

    sget v0, Lcom/rubycell/pianisthd/d/d;->f:I

    const/16 v1, 0x3d4

    if-gt v0, v1, :cond_6

    const-string v0, "hdpi"

    iput-object v0, p0, Lcom/rubycell/pianisthd/d/d;->g:Ljava/lang/String;

    goto :goto_1

    :cond_6
    const-string v0, "xlarge"

    iput-object v0, p0, Lcom/rubycell/pianisthd/d/d;->g:Ljava/lang/String;

    goto :goto_1
.end method

.method public static a()I
    .locals 1

    sget v0, Lcom/rubycell/pianisthd/d/d;->f:I

    return v0
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/rubycell/pianisthd/d/d;->e:I

    return v0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/rubycell/pianisthd/d/d;->g:Ljava/lang/String;

    return-object v0
.end method
