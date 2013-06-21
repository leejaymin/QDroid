.class public Lcom/jiaonisoft/horoscope/Main;
.super Landroid/app/Activity;
.source "Main.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final KEY_CHOOSED:Ljava/lang/String; = "choosed"

.field public static final KEY_ID:Ljava/lang/String; = "id"

.field public static final PREFS_NAME:Ljava/lang/String; = "com.jiaonisoft.horoscope.preference"


# instance fields
.field private checkedId:I

.field private nameList:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/jiaonisoft/horoscope/Main;->checkedId:I

    .line 89
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const-string v2, "Aquarius"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 90
    const-string v2, "Pisces"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Aries"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Taurus"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Gemini"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Cancer"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Leo"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Virgo"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 91
    const-string v2, "Libra"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Scorpio"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Sagittarius"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Capricorn"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Unselect"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/jiaonisoft/horoscope/Main;->nameList:[Ljava/lang/CharSequence;

    .line 13
    return-void
.end method

.method static synthetic access$0(Lcom/jiaonisoft/horoscope/Main;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 18
    iput p1, p0, Lcom/jiaonisoft/horoscope/Main;->checkedId:I

    return-void
.end method

.method static synthetic access$1(Lcom/jiaonisoft/horoscope/Main;)I
    .locals 1
    .parameter

    .prologue
    .line 18
    iget v0, p0, Lcom/jiaonisoft/horoscope/Main;->checkedId:I

    return v0
.end method

.method static synthetic access$2(Lcom/jiaonisoft/horoscope/Main;ZI)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/jiaonisoft/horoscope/Main;->saveProference(ZI)V

    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 29
    const v2, 0x7f070003

    invoke-virtual {p0, v2}, Lcom/jiaonisoft/horoscope/Main;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 30
    .local v1, grid:Landroid/widget/GridView;
    new-instance v0, Lcom/jiaonisoft/horoscope/ImageAdapter;

    invoke-direct {v0, p0}, Lcom/jiaonisoft/horoscope/ImageAdapter;-><init>(Landroid/content/Context;)V

    .line 31
    .local v0, adapter:Lcom/jiaonisoft/horoscope/ImageAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 32
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 36
    return-void
.end method

.method private saveProference(ZI)V
    .locals 4
    .parameter "isSelected"
    .parameter "id"

    .prologue
    .line 82
    const-string v2, "com.jiaonisoft.horoscope.preference"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/jiaonisoft/horoscope/Main;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 83
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "choosed"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 85
    const-string v2, "id"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 86
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 40
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 41
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 42
    const-string v2, "My Horoscope"

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 43
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 49
    iget-object v2, p0, Lcom/jiaonisoft/horoscope/Main;->nameList:[Ljava/lang/CharSequence;

    iget v3, p0, Lcom/jiaonisoft/horoscope/Main;->checkedId:I

    .line 50
    new-instance v4, Lcom/jiaonisoft/horoscope/Main$1;

    invoke-direct {v4, p0}, Lcom/jiaonisoft/horoscope/Main$1;-><init>(Lcom/jiaonisoft/horoscope/Main;)V

    .line 49
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    const-string v2, "OK"

    new-instance v3, Lcom/jiaonisoft/horoscope/Main$2;

    invoke-direct {v3, p0}, Lcom/jiaonisoft/horoscope/Main$2;-><init>(Lcom/jiaonisoft/horoscope/Main;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 69
    const-string v2, "Cancel"

    .line 70
    new-instance v3, Lcom/jiaonisoft/horoscope/Main$3;

    invoke-direct {v3, p0}, Lcom/jiaonisoft/horoscope/Main$3;-><init>(Lcom/jiaonisoft/horoscope/Main;)V

    .line 69
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 76
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 77
    .local v1, selectBox:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 79
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/jiaonisoft/horoscope/Main;->setContentView(I)V

    .line 25
    invoke-direct {p0}, Lcom/jiaonisoft/horoscope/Main;->init()V

    .line 26
    return-void
.end method
