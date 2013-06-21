.class public Lcom/jjcgames/android/airhockey/MultitouchTestActivity;
.super Landroid/app/Activity;
.source "MultitouchTestActivity.java"


# instance fields
.field private actionMask:I

.field private actionPointerDown:I

.field private getPointerCount:Ljava/lang/reflect/Method;

.field private multitouch:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->multitouch:Z

    .line 14
    return-void
.end method

.method static synthetic access$0(Lcom/jjcgames/android/airhockey/MultitouchTestActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->multitouch:Z

    return v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->requestWindowFeature(I)Z

    .line 23
    invoke-virtual {p0}, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 24
    const v2, 0x7f030003

    invoke-virtual {p0, v2}, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->setContentView(I)V

    .line 26
    const v2, 0x7f09000d

    invoke-virtual {p0, v2}, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/jjcgames/android/airhockey/MultitouchTestActivity$1;

    invoke-direct {v3, p0}, Lcom/jjcgames/android/airhockey/MultitouchTestActivity$1;-><init>(Lcom/jjcgames/android/airhockey/MultitouchTestActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    const-class v1, Landroid/view/MotionEvent;

    .line 50
    .local v1, me:Ljava/lang/Class;,"Ljava/lang/Class<Landroid/view/MotionEvent;>;"
    :try_start_0
    const-string v2, "ACTION_MASK"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->actionMask:I

    .line 52
    const-string v2, "ACTION_POINTER_DOWN"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 51
    iput v2, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->actionPointerDown:I

    .line 53
    const-string v2, "getPointerCount"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->getPointerCount:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4

    .line 65
    return-void

    .line 54
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 55
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 56
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 57
    .local v0, e:Ljava/lang/SecurityException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 58
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 59
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 60
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v2

    move-object v0, v2

    .line 61
    .local v0, e:Ljava/lang/NoSuchFieldException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 62
    .end local v0           #e:Ljava/lang/NoSuchFieldException;
    :catch_4
    move-exception v2

    move-object v0, v2

    .line 63
    .local v0, e:Ljava/lang/NoSuchMethodException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 74
    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    iget v2, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->actionMask:I

    and-int/2addr v1, v2

    iget v2, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->actionPointerDown:I

    if-eq v1, v2, :cond_0

    .line 75
    iget-object v1, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->getPointerCount:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 77
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->multitouch:Z

    .line 78
    const-string v1, "prefs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 79
    const-string v2, "multitouch"

    const/4 v3, 0x1

    .line 78
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 79
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 80
    const v1, 0x7f09000b

    invoke-virtual {p0, v1}, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 81
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 82
    const v1, 0x7f09000c

    invoke-virtual {p0, v1}, Lcom/jjcgames/android/airhockey/MultitouchTestActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 83
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 92
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 85
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 86
    .local v0, e:Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 87
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 88
    .local v0, e:Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 89
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 90
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
