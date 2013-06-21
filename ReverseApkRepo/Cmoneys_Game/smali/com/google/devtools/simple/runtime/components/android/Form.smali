.class public Lcom/google/devtools/simple/runtime/components/android/Form;
.super Landroid/app/Activity;
.source "Form.java"

# interfaces
.implements Lcom/google/devtools/simple/runtime/components/Component;
.implements Lcom/google/devtools/simple/runtime/components/android/ComponentContainer;
.implements Lcom/google/devtools/simple/runtime/components/HandlesEventDispatching;


# annotations
.annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerComponent;
    category = .enum Lcom/google/devtools/simple/common/ComponentCategory;->ARRANGEMENTS:Lcom/google/devtools/simple/common/ComponentCategory;
    description = "Top-level component containing all other components in the program"
    showOnPalette = false
    version = 0x2
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleObject;
.end annotation

.annotation runtime Lcom/google/devtools/simple/runtime/annotations/UsesPermissions;
    permissionNames = "android.permission.INTERNET"
.end annotation


# static fields
.field private static final APPEND_TITLES:Z = false

.field public static final APPINVENTOR_URL_SCHEME:Ljava/lang/String; = "appinventor"

.field private static final ARGUMENT_NAME:Ljava/lang/String; = "APP_INVENTOR_START"

.field public static final FORM_ARGS:Ljava/lang/String; = "args"

.field private static final LOG_TAG:Ljava/lang/String; = "Form"

.field private static final RESULT_NAME:Ljava/lang/String; = "APP_INVENTOR_RESULT"

.field private static activeForm:Lcom/google/devtools/simple/runtime/components/android/Form;

.field private static minimumToastWait:J

.field private static nextRequestCode:I


# instance fields
.field private final activityResultMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;",
            ">;"
        }
    .end annotation
.end field

.field private backgroundColor:I

.field private backgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private backgroundImagePath:Ljava/lang/String;

.field private frameLayout:Landroid/widget/FrameLayout;

.field private lastToastTime:J

.field private final onResumeListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/devtools/simple/runtime/components/android/OnResumeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final onStopListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/google/devtools/simple/runtime/components/android/OnStopListener;",
            ">;"
        }
    .end annotation
.end field

.field private screenInitialized:Z

.field private scrollable:Z

.field private startupValue:Ljava/lang/String;

.field private viewLayout:Lcom/google/devtools/simple/runtime/components/android/Layout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    const/4 v0, 0x1

    sput v0, Lcom/google/devtools/simple/runtime/components/android/Form;->nextRequestCode:I

    .line 114
    const-wide v0, 0x2540be400L

    sput-wide v0, Lcom/google/devtools/simple/runtime/components/android/Form;->minimumToastWait:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const-string v1, ""

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 97
    const-string v0, ""

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->backgroundImagePath:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->activityResultMap:Ljava/util/HashMap;

    .line 107
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->onStopListeners:Ljava/util/Set;

    .line 108
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->onResumeListeners:Ljava/util/Set;

    .line 111
    const-string v0, ""

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->startupValue:Ljava/lang/String;

    .line 115
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-wide v2, Lcom/google/devtools/simple/runtime/components/android/Form;->minimumToastWait:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->lastToastTime:J

    return-void
.end method

.method public static SwitchForm(Ljava/lang/String;)V
    .locals 1
    .parameter "formName"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        userVisible = false
    .end annotation

    .prologue
    .line 428
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Form;->SwitchFormWithArgs(Ljava/lang/String;Ljava/util/List;)V

    .line 429
    return-void
.end method

.method public static SwitchFormWithArgs(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .parameter "formName"
    .parameter
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleFunction;
        userVisible = false
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, extras:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "."

    .line 439
    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/Form;->activeForm:Lcom/google/devtools/simple/runtime/components/android/Form;

    if-eqz v1, :cond_2

    .line 440
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 443
    .local v0, activityIntent:Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/google/devtools/simple/runtime/components/android/Form;->activeForm:Lcom/google/devtools/simple/runtime/components/android/Form;

    invoke-virtual {v2}, Lcom/google/devtools/simple/runtime/components/android/Form;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 446
    :cond_0
    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/Form;->activeForm:Lcom/google/devtools/simple/runtime/components/android/Form;

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 448
    const-string v1, "args"

    invoke-interface {p1}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 450
    :cond_1
    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/Form;->activeForm:Lcom/google/devtools/simple/runtime/components/android/Form;

    invoke-virtual {v1, v0}, Lcom/google/devtools/simple/runtime/components/android/Form;->startActivity(Landroid/content/Intent;)V

    .line 454
    return-void

    .line 452
    .end local v0           #activityIntent:Landroid/content/Intent;
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "activeForm is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic access$000(Lcom/google/devtools/simple/runtime/components/android/Form;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->showExitApplicationNotification()V

    return-void
.end method

.method public static finishActivity()V
    .locals 1

    .prologue
    .line 513
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/Form;->activeForm:Lcom/google/devtools/simple/runtime/components/android/Form;

    invoke-virtual {v0}, Lcom/google/devtools/simple/runtime/components/android/Form;->finish()V

    .line 514
    return-void
.end method

.method public static finishActivityWithResult(Ljava/lang/String;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 517
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 518
    .local v0, resultIntent:Landroid/content/Intent;
    const-string v1, "APP_INVENTOR_RESULT"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 519
    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/Form;->activeForm:Lcom/google/devtools/simple/runtime/components/android/Form;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/google/devtools/simple/runtime/components/android/Form;->setResult(ILandroid/content/Intent;)V

    .line 520
    sget-object v1, Lcom/google/devtools/simple/runtime/components/android/Form;->activeForm:Lcom/google/devtools/simple/runtime/components/android/Form;

    invoke-virtual {v1}, Lcom/google/devtools/simple/runtime/components/android/Form;->finish()V

    .line 521
    return-void
.end method

.method private static generateNewRequestCode()I
    .locals 2

    .prologue
    .line 171
    sget v0, Lcom/google/devtools/simple/runtime/components/android/Form;->nextRequestCode:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/google/devtools/simple/runtime/components/android/Form;->nextRequestCode:I

    return v0
.end method

.method public static getActiveForm()Lcom/google/devtools/simple/runtime/components/android/Form;
    .locals 1

    .prologue
    .line 500
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/Form;->activeForm:Lcom/google/devtools/simple/runtime/components/android/Form;

    return-object v0
.end method

.method public static getStartupValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 504
    sget-object v0, Lcom/google/devtools/simple/runtime/components/android/Form;->activeForm:Lcom/google/devtools/simple/runtime/components/android/Form;

    iget-object v0, v0, Lcom/google/devtools/simple/runtime/components/android/Form;->startupValue:Ljava/lang/String;

    return-object v0
.end method

.method private showExitApplicationNotification()V
    .locals 4

    .prologue
    .line 549
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 550
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const-string v1, "Stop application?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 552
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 553
    const-string v1, "Stop this application and exit?  You\'ll need to relaunch the application to use it again."

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 555
    const/4 v1, -0x1

    const-string v2, "Stop and exit"

    new-instance v3, Lcom/google/devtools/simple/runtime/components/android/Form$2;

    invoke-direct {v3, p0}, Lcom/google/devtools/simple/runtime/components/android/Form$2;-><init>(Lcom/google/devtools/simple/runtime/components/android/Form;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 566
    const/4 v1, -0x2

    const-string v2, "Don\'t stop"

    new-instance v3, Lcom/google/devtools/simple/runtime/components/android/Form$3;

    invoke-direct {v3, p0}, Lcom/google/devtools/simple/runtime/components/android/Form$3;-><init>(Lcom/google/devtools/simple/runtime/components/android/Form;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 572
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 573
    return-void
.end method


# virtual methods
.method public $add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->viewLayout:Lcom/google/devtools/simple/runtime/components/android/Layout;

    invoke-interface {v0, p1}, Lcom/google/devtools/simple/runtime/components/android/Layout;->add(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;)V

    .line 471
    return-void
.end method

.method public $context()Landroid/app/Activity;
    .locals 0

    .prologue
    .line 460
    return-object p0
.end method

.method $define()V
    .locals 1

    .prologue
    .line 226
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public $form()Lcom/google/devtools/simple/runtime/components/android/Form;
    .locals 0

    .prologue
    .line 465
    return-object p0
.end method

.method public BackgroundColor()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 314
    iget v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->backgroundColor:I

    return v0
.end method

.method public BackgroundColor(I)V
    .locals 2
    .parameter "argb"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "&HFFFFFFFF"
        editorType = "color"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 326
    iput p1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->backgroundColor:I

    .line 327
    if-eqz p1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->viewLayout:Lcom/google/devtools/simple/runtime/components/android/Layout;

    invoke-interface {v0}, Lcom/google/devtools/simple/runtime/components/android/Layout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 330
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 336
    :goto_0
    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->viewLayout:Lcom/google/devtools/simple/runtime/components/android/Layout;

    invoke-interface {v0}, Lcom/google/devtools/simple/runtime/components/android/Layout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 334
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method public BackgroundImage()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The screen background image."
    .end annotation

    .prologue
    .line 347
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->backgroundImagePath:Ljava/lang/String;

    return-object v0
.end method

.method public BackgroundImage(Ljava/lang/String;)V
    .locals 4
    .parameter "path"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "asset"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        description = "The screen background image."
    .end annotation

    .prologue
    .line 365
    if-nez p1, :cond_0

    const-string v1, ""

    :goto_0
    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->backgroundImagePath:Ljava/lang/String;

    .line 368
    :try_start_0
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->backgroundImagePath:Ljava/lang/String;

    invoke-static {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/MediaUtil;->getDrawable(Lcom/google/devtools/simple/runtime/components/android/Form;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :goto_1
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2}, Lcom/google/devtools/simple/runtime/components/android/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 375
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->invalidate()V

    .line 376
    return-void

    :cond_0
    move-object v1, p1

    .line 365
    goto :goto_0

    .line 369
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 370
    .local v0, ioe:Ljava/io/IOException;
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to load "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->backgroundImagePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public Height()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    return v0
.end method

.method public Initialize()V
    .locals 2
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerEvent;
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleEvent;
        description = "Application screen starting"
    .end annotation

    .prologue
    .line 259
    const-string v0, "YAIL"

    const-string v1, "Form\'s Initialize called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    const-string v0, "Initialize"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/google/devtools/simple/runtime/events/EventDispatcher;->dispatchEvent(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->screenInitialized:Z

    .line 262
    return-void
.end method

.method public Scrollable(Z)V
    .locals 4
    .parameter "scrollable"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "True"
        editorType = "boolean"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        userVisible = false
    .end annotation

    .prologue
    const/4 v3, -0x1

    .line 284
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->scrollable:Z

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 305
    :goto_0
    return-void

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->frameLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 290
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 293
    :cond_1
    iput-boolean p1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->scrollable:Z

    .line 295
    if-eqz p1, :cond_3

    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    :goto_1
    iput-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->frameLayout:Landroid/widget/FrameLayout;

    .line 296
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->viewLayout:Lcom/google/devtools/simple/runtime/components/android/Layout;

    invoke-interface {v1}, Lcom/google/devtools/simple/runtime/components/android/Layout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v1

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 300
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->frameLayout:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->backgroundColor:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 301
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 302
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->frameLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->backgroundDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v0, v1}, Lcom/google/devtools/simple/runtime/components/android/util/ViewUtil;->setBackgroundImage(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/google/devtools/simple/runtime/components/android/Form;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 295
    :cond_3
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    goto :goto_1
.end method

.method public Scrollable()Z
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
        userVisible = false
    .end annotation

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->scrollable:Z

    return v0
.end method

.method public Title()Ljava/lang/String;
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public Title(Ljava/lang/String;)V
    .locals 0
    .parameter "title"
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/DesignerProperty;
        defaultValue = "\"\""
        editorType = "string"
    .end annotation

    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
    .end annotation

    .prologue
    .line 398
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/Form;->setTitle(Ljava/lang/CharSequence;)V

    .line 399
    return-void
.end method

.method public Width()I
    .locals 1
    .annotation runtime Lcom/google/devtools/simple/runtime/annotations/SimpleProperty;
        category = .enum Lcom/google/devtools/simple/common/PropertyCategory;->APPEARANCE:Lcom/google/devtools/simple/common/PropertyCategory;
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->frameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    return v0
.end method

.method public addExitButtonToMenu(Landroid/view/Menu;)V
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x0

    .line 537
    const/4 v1, 0x1

    const-string v2, "Stop this application"

    invoke-interface {p1, v3, v3, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    new-instance v2, Lcom/google/devtools/simple/runtime/components/android/Form$1;

    invoke-direct {v2, p0}, Lcom/google/devtools/simple/runtime/components/android/Form$1;-><init>(Lcom/google/devtools/simple/runtime/components/android/Form;)V

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    .line 545
    .local v0, stopApplicationItem:Landroid/view/MenuItem;
    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 546
    return-void
.end method

.method public callInitialize(Ljava/lang/Object;)V
    .locals 6
    .parameter "component"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    const-string v5, "YAIL"

    .line 611
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Initialize"

    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Class;

    .end local p0
    invoke-virtual {v2, v3, p0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 620
    .local v1, method:Ljava/lang/reflect/Method;
    :try_start_1
    const-string v2, "YAIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling Initialize method for Object "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const/4 p0, 0x0

    check-cast p0, [Ljava/lang/Object;

    invoke-virtual {v1, p1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 626
    .end local v1           #method:Ljava/lang/reflect/Method;
    :goto_0
    return-void

    .line 612
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 613
    .local v0, e:Ljava/lang/SecurityException;
    const-string v2, "YAIL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Security exception "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 615
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 617
    .local v0, e:Ljava/lang/NoSuchMethodException;
    goto :goto_0

    .line 622
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    .restart local v1       #method:Ljava/lang/reflect/Method;
    :catch_2
    move-exception v2

    move-object v0, v2

    .line 623
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v2, "YAIL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invoke exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    throw v2
.end method

.method public canDispatchEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "dataMember"
    .parameter "dataMemberName"
    .parameter "eventName"

    .prologue
    .line 231
    if-ne p1, p0, :cond_0

    const-string v0, "Initialize"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    const/4 v0, 0x1

    .line 235
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->screenInitialized:Z

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->viewLayout:Lcom/google/devtools/simple/runtime/components/android/Layout;

    invoke-interface {v0}, Lcom/google/devtools/simple/runtime/components/android/Layout;->getLayoutManager()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 577
    return-void
.end method

.method public deleteComponent(Ljava/lang/Object;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 580
    instance-of v0, p1, Lcom/google/devtools/simple/runtime/components/android/Deleteable;

    if-eqz v0, :cond_0

    .line 581
    check-cast p1, Lcom/google/devtools/simple/runtime/components/android/Deleteable;

    .end local p1
    invoke-interface {p1}, Lcom/google/devtools/simple/runtime/components/android/Deleteable;->onDelete()V

    .line 583
    :cond_0
    return-void
.end method

.method public dispatchEvent(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .parameter "dataMember"
    .parameter "dataMemberName"
    .parameter "eventName"
    .parameter "args"

    .prologue
    .line 249
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public dontGrabTouchEventsForComponent()V
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->frameLayout:Landroid/widget/FrameLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requestDisallowInterceptTouchEvent(Z)V

    .line 593
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-string v3, "Simple"

    .line 151
    const-string v1, "Simple"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Returning result. Request code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", result code = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;

    .line 154
    .local v0, component:Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;
    if-eqz v0, :cond_0

    .line 155
    const-string v1, "Simple"

    const-string v1, "Found component for activity result."

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-interface {v0, p1, p2, p3}, Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;->resultReturned(IILandroid/content/Intent;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "icicle"

    .prologue
    const/4 v4, 0x1

    const-string v5, "APP_INVENTOR_START"

    .line 120
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 122
    sput-object p0, Lcom/google/devtools/simple/runtime/components/android/Form;->activeForm:Lcom/google/devtools/simple/runtime/components/android/Form;

    .line 123
    const-string v1, "Form"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting activeForm to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/google/devtools/simple/runtime/components/android/Form;->activeForm:Lcom/google/devtools/simple/runtime/components/android/Form;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    new-instance v1, Lcom/google/devtools/simple/runtime/components/android/LinearLayout;

    invoke-direct {v1, p0, v4}, Lcom/google/devtools/simple/runtime/components/android/LinearLayout;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->viewLayout:Lcom/google/devtools/simple/runtime/components/android/Layout;

    .line 128
    invoke-virtual {p0, v4}, Lcom/google/devtools/simple/runtime/components/android/Form;->Scrollable(Z)V

    .line 129
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/google/devtools/simple/runtime/components/android/Form;->BackgroundColor(I)V

    .line 132
    sput-object p0, Lcom/google/devtools/simple/runtime/components/android/Form;->activeForm:Lcom/google/devtools/simple/runtime/components/android/Form;

    .line 133
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 134
    .local v0, startIntent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v1, "APP_INVENTOR_START"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "APP_INVENTOR_START"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->startupValue:Ljava/lang/String;

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->$define()V

    .line 146
    invoke-virtual {p0}, Lcom/google/devtools/simple/runtime/components/android/Form;->Initialize()V

    .line 147
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 529
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 532
    invoke-virtual {p0, p1}, Lcom/google/devtools/simple/runtime/components/android/Form;->addExitButtonToMenu(Landroid/view/Menu;)V

    .line 533
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 207
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 209
    const-string v0, "Form"

    const-string v1, "Form got onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 202
    const-string v0, "Form"

    const-string v1, "Form got onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 177
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 178
    const-string v2, "Form"

    const-string v3, "Form got onResume"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sput-object p0, Lcom/google/devtools/simple/runtime/components/android/Form;->activeForm:Lcom/google/devtools/simple/runtime/components/android/Form;

    .line 180
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/devtools/simple/runtime/components/android/OnResumeListener;

    .line 181
    .local v1, onResumeListener:Lcom/google/devtools/simple/runtime/components/android/OnResumeListener;
    invoke-interface {v1}, Lcom/google/devtools/simple/runtime/components/android/OnResumeListener;->onResume()V

    goto :goto_0

    .line 183
    .end local v1           #onResumeListener:Lcom/google/devtools/simple/runtime/components/android/OnResumeListener;
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 192
    const-string v2, "Form"

    const-string v3, "Form got onStop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v2, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/devtools/simple/runtime/components/android/OnStopListener;

    .line 194
    .local v1, onStopListener:Lcom/google/devtools/simple/runtime/components/android/OnStopListener;
    invoke-interface {v1}, Lcom/google/devtools/simple/runtime/components/android/OnStopListener;->onStop()V

    goto :goto_0

    .line 196
    .end local v1           #onStopListener:Lcom/google/devtools/simple/runtime/components/android/OnStopListener;
    :cond_0
    return-void
.end method

.method public registerForActivityResult(Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;)I
    .locals 3
    .parameter "component"

    .prologue
    .line 161
    invoke-static {}, Lcom/google/devtools/simple/runtime/components/android/Form;->generateNewRequestCode()I

    move-result v0

    .line 162
    .local v0, requestCode:I
    iget-object v1, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return v0
.end method

.method public registerForOnResume(Lcom/google/devtools/simple/runtime/components/android/OnResumeListener;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->onResumeListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method public registerForOnStop(Lcom/google/devtools/simple/runtime/components/android/OnStopListener;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->onStopListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 214
    return-void
.end method

.method public setChildHeight(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;I)V
    .locals 1
    .parameter "component"
    .parameter "height"

    .prologue
    .line 482
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/devtools/simple/runtime/components/android/util/ViewUtil;->setChildHeightForVerticalLayout(Landroid/view/View;I)V

    .line 483
    return-void
.end method

.method public setChildWidth(Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;I)V
    .locals 1
    .parameter "component"
    .parameter "width"

    .prologue
    .line 476
    invoke-virtual {p1}, Lcom/google/devtools/simple/runtime/components/android/AndroidViewComponent;->getView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/devtools/simple/runtime/components/android/util/ViewUtil;->setChildWidthForVerticalLayout(Landroid/view/View;I)V

    .line 477
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "newTitle"

    .prologue
    .line 495
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 497
    return-void
.end method

.method protected toastAllowed()Z
    .locals 6

    .prologue
    .line 599
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 600
    .local v0, now:J
    iget-wide v2, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->lastToastTime:J

    sget-wide v4, Lcom/google/devtools/simple/runtime/components/android/Form;->minimumToastWait:J

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 601
    iput-wide v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->lastToastTime:J

    .line 602
    const/4 v2, 0x1

    .line 604
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregisterForActivityResult(Lcom/google/devtools/simple/runtime/components/android/ActivityResultListener;)V
    .locals 1
    .parameter "component"

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/devtools/simple/runtime/components/android/Form;->activityResultMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    return-void
.end method
