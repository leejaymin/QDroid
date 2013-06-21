.class public Lcom/adobe/ttpixel/extension/utils/FnSetWakeLock;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/adobe/fre/FREFunction;


# static fields
.field public static final WAKE_LOCK_CPU:I = 0x1

.field public static final WAKE_LOCK_FULL:I = 0x4

.field public static final WAKE_LOCK_NONE:I = 0x0

.field public static final WAKE_LOCK_SCREEN_BRIGHT:I = 0x3

.field public static final WAKE_LOCK_SCREEN_DIM:I = 0x2

.field private static cWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static cWakeLockTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/adobe/ttpixel/extension/utils/FnSetWakeLock;->cWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v0, "PSTouchWakeLock"

    sput-object v0, Lcom/adobe/ttpixel/extension/utils/FnSetWakeLock;->cWakeLockTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/adobe/fre/FREContext;[Lcom/adobe/fre/FREObject;)Lcom/adobe/fre/FREObject;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p2, v0

    invoke-virtual {v0}, Lcom/adobe/fre/FREObject;->getAsInt()I

    move-result v0

    sget-object v4, Lcom/adobe/ttpixel/extension/utils/FnSetWakeLock;->cWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/adobe/ttpixel/extension/utils/FnSetWakeLock;->cWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v4, 0x0

    sput-object v4, Lcom/adobe/ttpixel/extension/utils/FnSetWakeLock;->cWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    packed-switch v0, :pswitch_data_0

    move v4, v3

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/adobe/fre/FREContext;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v5, "power"

    invoke-virtual {v0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    check-cast v0, Landroid/os/PowerManager;

    sget-object v5, Lcom/adobe/ttpixel/extension/utils/FnSetWakeLock;->cWakeLockTag:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    sput-object v0, Lcom/adobe/ttpixel/extension/utils/FnSetWakeLock;->cWakeLock:Landroid/os/PowerManager$WakeLock;

    sget-object v0, Lcom/adobe/ttpixel/extension/utils/FnSetWakeLock;->cWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, v2

    :goto_1
    :try_start_1
    invoke-static {v0}, Lcom/adobe/fre/FREObject;->newObject(Z)Lcom/adobe/fre/FREObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    :goto_2
    return-object v0

    :pswitch_0
    move v4, v2

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x6

    move v4, v0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xa

    move v4, v0

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x1a

    move v4, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v3

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
