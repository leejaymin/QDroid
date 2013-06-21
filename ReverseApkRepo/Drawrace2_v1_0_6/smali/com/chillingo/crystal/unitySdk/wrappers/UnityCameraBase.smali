.class public Lcom/chillingo/crystal/unitySdk/wrappers/UnityCameraBase;
.super Ljava/lang/Object;


# static fields
.field private static mCamera:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Main Camera"

    sput-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCameraBase;->mCamera:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static camera()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCameraBase;->mCamera:Ljava/lang/String;

    return-object v0
.end method

.method public static setCamera(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/chillingo/crystal/unitySdk/wrappers/UnityCameraBase;->mCamera:Ljava/lang/String;

    return-void
.end method
