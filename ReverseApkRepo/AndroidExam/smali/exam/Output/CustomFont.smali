.class public Lexam/Output/CustomFont;
.super Landroid/app/Activity;
.source "CustomFont.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lexam/Output/CustomFont$MyView;
    }
.end annotation


# instance fields
.field mFont:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    new-instance v0, Lexam/Output/CustomFont$MyView;

    invoke-direct {v0, p0, p0}, Lexam/Output/CustomFont$MyView;-><init>(Lexam/Output/CustomFont;Landroid/content/Context;)V

    .line 14
    .local v0, vw:Lexam/Output/CustomFont$MyView;
    invoke-virtual {p0, v0}, Lexam/Output/CustomFont;->setContentView(Landroid/view/View;)V

    .line 16
    invoke-virtual {p0}, Lexam/Output/CustomFont;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 17
    const-string v2, "balloons.ttf"

    .line 16
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lexam/Output/CustomFont;->mFont:Landroid/graphics/Typeface;

    .line 18
    return-void
.end method
