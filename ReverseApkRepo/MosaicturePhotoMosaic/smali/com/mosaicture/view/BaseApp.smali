.class public Lcom/mosaicture/view/BaseApp;
.super Landroid/app/Application;


# static fields
.field private static a:Ljava/lang/Boolean;

.field private static b:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mosaicture/view/BaseApp;->a:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/mosaicture/view/BaseApp;->b:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/mosaicture/view/BaseApp;->a:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static a(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/mosaicture/view/BaseApp;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public static b()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/mosaicture/view/BaseApp;->b:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static b(Ljava/lang/Boolean;)V
    .locals 0

    sput-object p0, Lcom/mosaicture/view/BaseApp;->b:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method
