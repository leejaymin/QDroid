.class final enum Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation$1;
.super Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/chillingo/crystal/utils/HardwareUtils$ScreenOrientation;-><init>(Ljava/lang/String;ILcom/chillingo/crystal/utils/HardwareUtils$1;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "portrait"

    return-object v0
.end method
