.class public final enum Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/ttpixel/extension/bonjour/BonjourThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ThreadState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

.field public static final enum CREATED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

.field public static final enum FINISHING:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

.field public static final enum STARTED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

.field public static final enum STOPPED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;


# instance fields
.field private _id:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    const-string v1, "CREATED"

    invoke-direct {v0, v1, v2, v2}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->CREATED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    const-string v1, "STARTED"

    invoke-direct {v0, v1, v3, v3}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->STARTED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    const-string v1, "FINISHING"

    invoke-direct {v0, v1, v4, v4}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->FINISHING:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    new-instance v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v5, v5}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->STOPPED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->CREATED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->STARTED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->FINISHING:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->STOPPED:Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->$VALUES:[Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->_id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;
    .locals 1

    const-class v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    return-object v0
.end method

.method public static values()[Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;
    .locals 1

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->$VALUES:[Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    invoke-virtual {v0}, [Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    iget v0, p0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->_id:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$1;->$SwitchMap$com$adobe$ttpixel$extension$bonjour$BonjourThread$ThreadState:[I

    invoke-virtual {p0}, Lcom/adobe/ttpixel/extension/bonjour/BonjourThread$ThreadState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "created"

    goto :goto_0

    :pswitch_1
    const-string v0, "started"

    goto :goto_0

    :pswitch_2
    const-string v0, "finishing"

    goto :goto_0

    :pswitch_3
    const-string v0, "stopped"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
