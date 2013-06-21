.class public Lcom/adobe/ttpixel/extension/cameraroll/FnBrowseImages;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field private static final BROWSE_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG_BROWSE_IMAGES:Ljava/lang/String; = "browseImages"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "_display_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_size"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "orientation"

    aput-object v2, v0, v1

    sput-object v0, Lcom/adobe/ttpixel/extension/cameraroll/FnBrowseImages;->BROWSE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/adobe/ttpixel/extension/cameraroll/FnBrowseImages;->BROWSE_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 3

    check-cast p1, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;

    invoke-virtual {p1}, Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/adobe/ttpixel/extension/cameraroll/FnBrowseImages$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/adobe/ttpixel/extension/cameraroll/FnBrowseImages$1;-><init>(Lcom/adobe/ttpixel/extension/cameraroll/FnBrowseImages;Landroid/app/Activity;Lcom/adobe/ttpixel/extension/TTPixelExtensionContextCameraRoll;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x0

    return-object v0
.end method
