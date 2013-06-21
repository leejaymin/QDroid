.class public Ledu/umich/PowerTutor/util/CompareFunc;
.super Ljava/lang/Object;
.source "CompareFunc.java"


# static fields
.field public static final SWIPE_MAX_OFF_PATH:I = 0xfa

.field public static final SWIPE_MIN_DISTANCE:I = 0x78

.field public static final SWIPE_THRESHOLD_VELOCITY:I = 0xc8

.field private static ScreenSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    sput v0, Ledu/umich/PowerTutor/util/CompareFunc;->ScreenSize:I

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkExtraStore(Landroid/preference/PreferenceActivity;)Z
    .locals 5
    .parameter "activity"

    .prologue
    .line 16
    const/4 v2, 0x0

    .line 17
    .local v2, flag:Z
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    .line 21
    .local v0, MethodList:[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .local v1, checkMethod:I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_1

    .line 33
    .end local v0           #MethodList:[Ljava/lang/reflect/Method;
    .end local v1           #checkMethod:I
    :cond_0
    return v2

    .line 23
    .restart local v0       #MethodList:[Ljava/lang/reflect/Method;
    .restart local v1       #checkMethod:I
    :cond_1
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ApplicationInfo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 26
    :try_start_0
    aget-object v3, v0, v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_2

    .line 27
    const/4 v2, 0x1

    .line 21
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 29
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static detectScreen(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x1

    .line 47
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 48
    .local v1, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, lanscapeHight:I
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v3, :cond_0

    .line 53
    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 57
    :goto_0
    const/16 v2, 0x320

    if-lt v0, v2, :cond_1

    .line 58
    const/4 v2, 0x2

    sput v2, Ledu/umich/PowerTutor/util/CompareFunc;->ScreenSize:I

    .line 63
    :goto_1
    return-void

    .line 55
    :cond_0
    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    .line 59
    :cond_1
    const/16 v2, 0x140

    if-gt v0, v2, :cond_2

    .line 60
    const/4 v2, 0x0

    sput v2, Ledu/umich/PowerTutor/util/CompareFunc;->ScreenSize:I

    goto :goto_1

    .line 62
    :cond_2
    sput v3, Ledu/umich/PowerTutor/util/CompareFunc;->ScreenSize:I

    goto :goto_1
.end method

.method public static getSDKVersion()I
    .locals 1

    .prologue
    .line 38
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getScreenSize()I
    .locals 1

    .prologue
    .line 67
    sget v0, Ledu/umich/PowerTutor/util/CompareFunc;->ScreenSize:I

    return v0
.end method
