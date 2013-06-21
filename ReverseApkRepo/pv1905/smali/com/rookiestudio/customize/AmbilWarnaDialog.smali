.class public Lcom/rookiestudio/customize/AmbilWarnaDialog;
.super Ljava/lang/Object;
.source "AmbilWarnaDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/rookiestudio/customize/AmbilWarnaDialog$OnAmbilWarnaListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field dialog:Landroid/app/AlertDialog;

.field hue:F

.field listener:Lcom/rookiestudio/customize/AmbilWarnaDialog$OnAmbilWarnaListener;

.field panah:Landroid/widget/ImageView;

.field sat:F

.field satudp:F

.field tmp01:[F

.field ukuranUiDp:F

.field ukuranUiPx:F

.field val:F

.field viewHue:Landroid/view/View;

.field viewKeker:Landroid/widget/ImageView;

.field viewKotak:Lcom/rookiestudio/customize/AmbilWarnaKotak;

.field viewWarnaBaru:Landroid/view/View;

.field warnaBaru:I

.field warnaLama:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/rookiestudio/customize/AmbilWarnaDialog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->TAG:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/rookiestudio/customize/AmbilWarnaDialog$OnAmbilWarnaListener;)V
    .locals 4
    .parameter "context"
    .parameter "color"
    .parameter "listener"

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/high16 v1, 0x4370

    iput v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->ukuranUiDp:F

    .line 158
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->tmp01:[F

    .line 37
    iput-object p3, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->listener:Lcom/rookiestudio/customize/AmbilWarnaDialog$OnAmbilWarnaListener;

    .line 38
    iput p2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->warnaLama:I

    .line 39
    iput p2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->warnaBaru:I

    .line 40
    iget-object v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->tmp01:[F

    invoke-static {p2, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 41
    iget-object v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->tmp01:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->hue:F

    .line 42
    iget-object v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->tmp01:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->sat:F

    .line 43
    iget-object v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->tmp01:[F

    const/4 v2, 0x2

    aget v1, v1, v2

    iput v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->val:F

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->satudp:F

    .line 46
    iget v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->ukuranUiDp:F

    iget v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->satudp:F

    mul-float/2addr v1, v2

    iput v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->ukuranUiPx:F

    .line 47
    sget-object v1, Lcom/rookiestudio/customize/AmbilWarnaDialog;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "satudp = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->satudp:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ukuranUiPx="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->ukuranUiPx:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030003

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 50
    .local v0, view:Landroid/view/View;
    const v1, 0x7f0c0018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    .line 51
    const v1, 0x7f0c0017

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/rookiestudio/customize/AmbilWarnaKotak;

    iput-object v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->viewKotak:Lcom/rookiestudio/customize/AmbilWarnaKotak;

    .line 52
    const v1, 0x7f0c0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->panah:Landroid/widget/ImageView;

    .line 53
    const v1, 0x7f0c0016

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->viewWarnaBaru:Landroid/view/View;

    .line 54
    const v1, 0x7f0c001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->viewKeker:Landroid/widget/ImageView;

    .line 56
    invoke-virtual {p0}, Lcom/rookiestudio/customize/AmbilWarnaDialog;->letakkanPanah()V

    .line 57
    invoke-virtual {p0}, Lcom/rookiestudio/customize/AmbilWarnaDialog;->letakkanKeker()V

    .line 58
    iget-object v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->viewKotak:Lcom/rookiestudio/customize/AmbilWarnaKotak;

    iget v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->hue:F

    invoke-virtual {v1, v2}, Lcom/rookiestudio/customize/AmbilWarnaKotak;->setHue(F)V

    .line 59
    iget-object v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->viewWarnaBaru:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    iget-object v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->viewHue:Landroid/view/View;

    new-instance v2, Lcom/rookiestudio/customize/AmbilWarnaDialog$1;

    invoke-direct {v2, p0}, Lcom/rookiestudio/customize/AmbilWarnaDialog$1;-><init>(Lcom/rookiestudio/customize/AmbilWarnaDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    iget-object v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->viewKotak:Lcom/rookiestudio/customize/AmbilWarnaKotak;

    new-instance v2, Lcom/rookiestudio/customize/AmbilWarnaDialog$2;

    invoke-direct {v2, p0}, Lcom/rookiestudio/customize/AmbilWarnaDialog$2;-><init>(Lcom/rookiestudio/customize/AmbilWarnaDialog;)V

    invoke-virtual {v1, v2}, Lcom/rookiestudio/customize/AmbilWarnaKotak;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 117
    const v2, 0x104000a

    new-instance v3, Lcom/rookiestudio/customize/AmbilWarnaDialog$3;

    invoke-direct {v3, p0}, Lcom/rookiestudio/customize/AmbilWarnaDialog$3;-><init>(Lcom/rookiestudio/customize/AmbilWarnaDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 125
    const/high16 v2, 0x104

    new-instance v3, Lcom/rookiestudio/customize/AmbilWarnaDialog$4;

    invoke-direct {v3, p0}, Lcom/rookiestudio/customize/AmbilWarnaDialog$4;-><init>(Lcom/rookiestudio/customize/AmbilWarnaDialog;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 133
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 115
    iput-object v1, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->dialog:Landroid/app/AlertDialog;

    .line 135
    return-void
.end method

.method static synthetic access$0(Lcom/rookiestudio/customize/AmbilWarnaDialog;)I
    .locals 1
    .parameter

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/rookiestudio/customize/AmbilWarnaDialog;->hitungWarna()I

    move-result v0

    return v0
.end method

.method private hitungWarna()I
    .locals 3

    .prologue
    .line 160
    iget-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->tmp01:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->hue:F

    aput v2, v0, v1

    .line 161
    iget-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->tmp01:[F

    const/4 v1, 0x1

    iget v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->sat:F

    aput v2, v0, v1

    .line 162
    iget-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->tmp01:[F

    const/4 v1, 0x2

    iget v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->val:F

    aput v2, v0, v1

    .line 163
    iget-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->tmp01:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected letakkanKeker()V
    .locals 6

    .prologue
    const/high16 v5, 0x4040

    .line 149
    iget v3, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->sat:F

    iget v4, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->ukuranUiPx:F

    mul-float v1, v3, v4

    .line 150
    .local v1, x:F
    const/high16 v3, 0x3f80

    iget v4, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->val:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->ukuranUiPx:F

    mul-float v2, v3, v4

    .line 152
    .local v2, y:F
    iget-object v3, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->viewKeker:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 153
    .local v0, layoutParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    add-float v3, v1, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->x:I

    .line 154
    add-float v3, v2, v5

    float-to-int v3, v3

    iput v3, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 155
    iget-object v3, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->viewKeker:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    return-void
.end method

.method protected letakkanPanah()V
    .locals 5

    .prologue
    .line 139
    iget v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->ukuranUiPx:F

    iget v3, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->hue:F

    iget v4, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->ukuranUiPx:F

    mul-float/2addr v3, v4

    const/high16 v4, 0x43b4

    div-float/2addr v3, v4

    sub-float v1, v2, v3

    .line 140
    .local v1, y:F
    iget v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->ukuranUiPx:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 142
    :cond_0
    iget-object v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->panah:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 143
    .local v0, layoutParams:Landroid/widget/AbsoluteLayout$LayoutParams;
    const/high16 v2, 0x4080

    add-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/AbsoluteLayout$LayoutParams;->y:I

    .line 144
    iget-object v2, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->panah:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/rookiestudio/customize/AmbilWarnaDialog;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 168
    return-void
.end method
