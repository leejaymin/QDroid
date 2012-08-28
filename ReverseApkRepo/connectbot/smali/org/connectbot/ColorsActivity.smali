.class public Lorg/connectbot/ColorsActivity;
.super Landroid/app/Activity;
.source "ColorsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/connectbot/ColorsActivity$ColorView;,
        Lorg/connectbot/ColorsActivity$ColorsAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;"
    }
.end annotation


# instance fields
.field private hostdb:Lorg/connectbot/util/HostDatabase;

.field private mBgSpinner:Landroid/widget/Spinner;

.field private mColorGrid:Landroid/widget/GridView;

.field private mColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColorScheme:I

.field private mCurrentColor:I

.field private mDefaultColors:[I

.field private mFgSpinner:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/connectbot/ColorsActivity;->mCurrentColor:I

    .line 49
    return-void
.end method

.method static synthetic access$0(Lorg/connectbot/ColorsActivity;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->mColorList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1(Lorg/connectbot/ColorsActivity;)Lorg/connectbot/util/HostDatabase;
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    return-object v0
.end method

.method static synthetic access$2(Lorg/connectbot/ColorsActivity;)Landroid/widget/GridView;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->mColorGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$3(Lorg/connectbot/ColorsActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->mFgSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic access$4(Lorg/connectbot/ColorsActivity;)Landroid/widget/Spinner;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->mBgSpinner:Landroid/widget/Spinner;

    return-object v0
.end method

.method private editColor(I)V
    .locals 2
    .parameter "colorNumber"

    .prologue
    .line 265
    iput p1, p0, Lorg/connectbot/ColorsActivity;->mCurrentColor:I

    .line 266
    new-instance v1, Lorg/connectbot/util/UberColorPickerDialog;

    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->mColorList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, p0, p0, v0}, Lorg/connectbot/util/UberColorPickerDialog;-><init>(Landroid/content/Context;Lorg/connectbot/util/UberColorPickerDialog$OnColorChangedListener;I)V

    invoke-virtual {v1}, Lorg/connectbot/util/UberColorPickerDialog;->show()V

    .line 267
    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 3
    .parameter "value"

    .prologue
    .line 276
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    iget v1, p0, Lorg/connectbot/ColorsActivity;->mCurrentColor:I

    invoke-virtual {v0, v1, p1}, Lorg/connectbot/util/HostDatabase;->setGlobalColor(II)V

    .line 277
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->mColorList:Ljava/util/List;

    iget v1, p0, Lorg/connectbot/ColorsActivity;->mCurrentColor:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->mColorGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->invalidateViews()V

    .line 279
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    const/high16 v0, 0x7f03

    invoke-virtual {p0, v0}, Lorg/connectbot/ColorsActivity;->setContentView(I)V

    .line 68
    const-string v0, "%s: %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Lorg/connectbot/ColorsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f08

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v4

    .line 70
    invoke-virtual {p0}, Lorg/connectbot/ColorsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    aput-object v2, v1, v5

    .line 68
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/connectbot/ColorsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 72
    iput v4, p0, Lorg/connectbot/ColorsActivity;->mColorScheme:I

    .line 74
    new-instance v0, Lorg/connectbot/util/HostDatabase;

    invoke-direct {v0, p0}, Lorg/connectbot/util/HostDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/connectbot/ColorsActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 76
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    iget v1, p0, Lorg/connectbot/ColorsActivity;->mColorScheme:I

    invoke-virtual {v0, v1}, Lorg/connectbot/util/HostDatabase;->getColorsForScheme(I)[Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/ColorsActivity;->mColorList:Ljava/util/List;

    .line 77
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    iget v1, p0, Lorg/connectbot/ColorsActivity;->mColorScheme:I

    invoke-virtual {v0, v1}, Lorg/connectbot/util/HostDatabase;->getDefaultColorsForScheme(I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/connectbot/ColorsActivity;->mDefaultColors:[I

    .line 79
    const v0, 0x7f0b0003

    invoke-virtual {p0, v0}, Lorg/connectbot/ColorsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lorg/connectbot/ColorsActivity;->mColorGrid:Landroid/widget/GridView;

    .line 80
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->mColorGrid:Landroid/widget/GridView;

    new-instance v1, Lorg/connectbot/ColorsActivity$ColorsAdapter;

    invoke-direct {v1, p0, v5}, Lorg/connectbot/ColorsActivity$ColorsAdapter;-><init>(Lorg/connectbot/ColorsActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->mColorGrid:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 82
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->mColorGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setSelection(I)V

    .line 84
    const v0, 0x7f0b0001

    invoke-virtual {p0, v0}, Lorg/connectbot/ColorsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/connectbot/ColorsActivity;->mFgSpinner:Landroid/widget/Spinner;

    .line 85
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->mFgSpinner:Landroid/widget/Spinner;

    new-instance v1, Lorg/connectbot/ColorsActivity$ColorsAdapter;

    invoke-direct {v1, p0, v4}, Lorg/connectbot/ColorsActivity$ColorsAdapter;-><init>(Lorg/connectbot/ColorsActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 86
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->mFgSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lorg/connectbot/ColorsActivity;->mDefaultColors:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 87
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->mFgSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 89
    const v0, 0x7f0b0002

    invoke-virtual {p0, v0}, Lorg/connectbot/ColorsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lorg/connectbot/ColorsActivity;->mBgSpinner:Landroid/widget/Spinner;

    .line 90
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->mBgSpinner:Landroid/widget/Spinner;

    new-instance v1, Lorg/connectbot/ColorsActivity$ColorsAdapter;

    invoke-direct {v1, p0, v4}, Lorg/connectbot/ColorsActivity$ColorsAdapter;-><init>(Lorg/connectbot/ColorsActivity;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 91
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->mBgSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lorg/connectbot/ColorsActivity;->mDefaultColors:[I

    aget v1, v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 92
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->mBgSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 93
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 304
    const v1, 0x7f0800d0

    invoke-interface {p1, v1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 305
    .local v0, reset:Landroid/view/MenuItem;
    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 306
    const/16 v1, 0x31

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setNumericShortcut(C)Landroid/view/MenuItem;

    .line 307
    const v1, 0x108004c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 308
    new-instance v1, Lorg/connectbot/ColorsActivity$1;

    invoke-direct {v1, p0}, Lorg/connectbot/ColorsActivity$1;-><init>(Lorg/connectbot/ColorsActivity;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 329
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 99
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    if-eqz v0, :cond_0

    .line 100
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    invoke-virtual {v0}, Lorg/connectbot/util/HostDatabase;->close()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/connectbot/ColorsActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 103
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-direct {p0, p3}, Lorg/connectbot/ColorsActivity;->editColor(I)V

    .line 271
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 283
    const/4 v0, 0x0

    .line 284
    .local v0, needUpdate:Z
    iget-object v1, p0, Lorg/connectbot/ColorsActivity;->mFgSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_2

    .line 285
    iget-object v1, p0, Lorg/connectbot/ColorsActivity;->mDefaultColors:[I

    aget v1, v1, v4

    if-eq p3, v1, :cond_0

    .line 286
    iget-object v1, p0, Lorg/connectbot/ColorsActivity;->mDefaultColors:[I

    aput p3, v1, v4

    .line 287
    const/4 v0, 0x1

    .line 296
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 297
    iget-object v1, p0, Lorg/connectbot/ColorsActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    iget v2, p0, Lorg/connectbot/ColorsActivity;->mColorScheme:I

    iget-object v3, p0, Lorg/connectbot/ColorsActivity;->mDefaultColors:[I

    aget v3, v3, v4

    iget-object v4, p0, Lorg/connectbot/ColorsActivity;->mDefaultColors:[I

    aget v4, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/connectbot/util/HostDatabase;->setDefaultColorsForScheme(III)V

    .line 298
    :cond_1
    return-void

    .line 289
    :cond_2
    iget-object v1, p0, Lorg/connectbot/ColorsActivity;->mBgSpinner:Landroid/widget/Spinner;

    if-ne p1, v1, :cond_0

    .line 290
    iget-object v1, p0, Lorg/connectbot/ColorsActivity;->mDefaultColors:[I

    aget v1, v1, v5

    if-eq p3, v1, :cond_0

    .line 291
    iget-object v1, p0, Lorg/connectbot/ColorsActivity;->mDefaultColors:[I

    aput p3, v1, v5

    .line 292
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 109
    iget-object v0, p0, Lorg/connectbot/ColorsActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Lorg/connectbot/util/HostDatabase;

    invoke-direct {v0, p0}, Lorg/connectbot/util/HostDatabase;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/connectbot/ColorsActivity;->hostdb:Lorg/connectbot/util/HostDatabase;

    .line 111
    :cond_0
    return-void
.end method
