.class public Lorg/connectbot/util/UberColorPickerDialog;
.super Landroid/app/Dialog;
.source "UberColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;,
        Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private final mInitialColor:I

.field private final mListener:Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;I)V
    .locals 0
    .parameter "context"
    .parameter "listener"
    .parameter "initialColor"

    .prologue
    .line 88
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 90
    iput-object p2, p0, Lorg/connectbot/util/UberColorPickerDialog;->mListener:Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;

    .line 91
    iput p3, p0, Lorg/connectbot/util/UberColorPickerDialog;->mInitialColor:I

    .line 92
    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/util/UberColorPickerDialog;)Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lorg/connectbot/util/UberColorPickerDialog;->mListener:Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 100
    new-instance v2, Lorg/connectbot/util/UberColorPickerDialog$1;

    invoke-direct {v2, p0}, Lorg/connectbot/util/UberColorPickerDialog$1;-><init>(Lorg/connectbot/util/UberColorPickerDialog;)V

    .line 107
    .local v2, l:Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;
    new-instance v6, Landroid/util/DisplayMetrics;

    invoke-direct {v6}, Landroid/util/DisplayMetrics;-><init>()V

    .line 108
    .local v6, dm:Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lorg/connectbot/util/UberColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 109
    iget v3, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 110
    .local v3, screenWidth:I
    iget v4, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 112
    .local v4, screenHeight:I
    const-string v0, "Pick a color (try the trackball)"

    invoke-virtual {p0, v0}, Lorg/connectbot/util/UberColorPickerDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 115
    :try_start_0
    new-instance v0, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;

    invoke-virtual {p0}, Lorg/connectbot/util/UberColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v5, p0, Lorg/connectbot/util/UberColorPickerDialog;->mInitialColor:I

    invoke-direct/range {v0 .. v5}, Lorg/connectbot/util/UberColorPickerDialog$ColorPickerView;-><init>(Landroid/content/Context;Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;III)V

    invoke-virtual {p0, v0}, Lorg/connectbot/util/UberColorPickerDialog;->setContentView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v7

    .line 119
    .local v7, e:Ljava/lang/Exception;
    invoke-virtual {p0}, Lorg/connectbot/util/UberColorPickerDialog;->dismiss()V

    goto :goto_0
.end method
