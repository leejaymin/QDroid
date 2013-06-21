.class public Lui/utils/OrientationUtils;
.super Ljava/lang/Object;
.source "OrientationUtils.java"


# static fields
.field private static minVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const/16 v0, 0x8

    sput v0, Lui/utils/OrientationUtils;->minVersion:I

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRotationReflection(Landroid/view/Display;)I
    .locals 5
    .parameter "display"

    .prologue
    .line 56
    :try_start_0
    const-class v2, Landroid/view/Display;

    const-string v3, "getRotation"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 57
    .local v1, getRotationMethod:Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    .line 58
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 67
    .end local v1           #getRotationMethod:Ljava/lang/reflect/Method;
    :goto_0
    return v2

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 62
    const-string v2, "trace"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No Such Method: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :cond_0
    :goto_1
    const/4 v2, -0x1

    goto :goto_0

    .line 63
    :catch_1
    move-exception v0

    .line 64
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    const-string v2, "trace"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public static lockScreen(Landroid/app/Activity;)V
    .locals 5
    .parameter "parent"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 20
    if-nez p0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 21
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 23
    :pswitch_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v2, Lui/utils/OrientationUtils;->minVersion:I

    if-ge v1, v2, :cond_1

    .line 24
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1}, Lui/utils/OrientationUtils;->getRotationReflection(Landroid/view/Display;)I

    move-result v0

    .line 28
    .local v0, rotation:I
    if-eq v0, v3, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 30
    :cond_2
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 32
    :cond_3
    invoke-virtual {p0, v3}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 38
    .end local v0           #rotation:I
    :pswitch_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    sget v2, Lui/utils/OrientationUtils;->minVersion:I

    if-ge v1, v2, :cond_4

    .line 39
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 41
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v1}, Lui/utils/OrientationUtils;->getRotationReflection(Landroid/view/Display;)I

    move-result v0

    .line 43
    .restart local v0       #rotation:I
    if-eqz v0, :cond_5

    if-ne v0, v3, :cond_6

    .line 44
    :cond_5
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 47
    :cond_6
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 21
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static unlockScreen(Landroid/app/Activity;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 15
    if-nez p0, :cond_0

    .line 17
    :goto_0
    return-void

    .line 16
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0
.end method
